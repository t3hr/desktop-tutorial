"""Erzeugt SEO-optimierten Pinterest-Content (Titel, Beschreibung, Alt-Text)
aus einem Bild mithilfe der Claude-API (Vision)."""
from __future__ import annotations

import base64
import json
import mimetypes
import re
from pathlib import Path

import anthropic

from config import Config

_SYSTEM_PROMPT = """\
Du bist ein Social-Media-Experte fuer Pinterest-SEO. Du bekommst ein Bild und \
erstellst dafuer Pin-Metadaten, die auf hohe Sichtbarkeit in der Pinterest-Suche \
optimiert sind.

Regeln:
- title: praegnanter, keyword-reicher Pin-Titel, maximal 100 Zeichen, kein Clickbait.
- description: 2-4 natuerliche Saetze mit relevanten Suchbegriffen, maximal 480 Zeichen,
  ohne Hashtags.
- hashtags: 3 bis 5 relevante Hashtags ohne Leerzeichen, jeweils mit "#" beginnend.
- alt_text: sachliche, barrierefreie Bildbeschreibung fuer Screenreader, maximal
  400 Zeichen, beschreibt was tatsaechlich im Bild zu sehen ist.

Antworte ausschliesslich mit einem einzelnen JSON-Objekt, ohne Markdown-Codeblock,
mit exakt den Schluesseln: title, description, hashtags, alt_text.
"""

_JSON_FENCE_RE = re.compile(r"^```(?:json)?\s*|\s*```$", re.MULTILINE)


def _encode_image(path: Path) -> tuple[str, str]:
    media_type = mimetypes.guess_type(path)[0] or "image/jpeg"
    data = base64.standard_b64encode(path.read_bytes()).decode("utf-8")
    return media_type, data


def _parse_json_response(raw_text: str) -> dict:
    cleaned = _JSON_FENCE_RE.sub("", raw_text.strip())
    return json.loads(cleaned)


def _postprocess(data: dict) -> dict:
    title = str(data["title"]).strip()[:100]
    description = str(data["description"]).strip()[:480]
    hashtags = [tag.strip() for tag in data.get("hashtags", []) if tag.strip()]
    alt_text = str(data["alt_text"]).strip()[:400]

    full_description = description
    if hashtags:
        full_description = f"{description}\n\n{' '.join(hashtags)}"[:500]

    return {
        "title": title,
        "description": full_description,
        "alt_text": alt_text,
        "hashtags": hashtags,
    }


def generate_pin_content(image_path: Path, config: Config) -> dict:
    client = anthropic.Anthropic(api_key=config.anthropic_api_key)
    media_type, data = _encode_image(image_path)

    message = client.messages.create(
        model=config.anthropic_model,
        max_tokens=800,
        system=_SYSTEM_PROMPT,
        messages=[
            {
                "role": "user",
                "content": [
                    {
                        "type": "image",
                        "source": {"type": "base64", "media_type": media_type, "data": data},
                    },
                    {
                        "type": "text",
                        "text": "Erstelle die Pinterest-Pin-Metadaten fuer dieses Bild als JSON.",
                    },
                ],
            }
        ],
    )

    raw_text = "".join(block.text for block in message.content if block.type == "text")
    try:
        parsed = _parse_json_response(raw_text)
    except json.JSONDecodeError as exc:
        raise ValueError(f"Claude-Antwort war kein gueltiges JSON: {raw_text!r}") from exc

    return _postprocess(parsed)
