#!/bin/bash
# Download: 1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111
# 43 Bilder in 4 Unterordnern
# Generiert: 2026-06-22

DIR="$HOME/Downloads/magnific/Spaces"
SKIPPED=0
DOWNLOADED=0
FAILED=0

# === architecture (6 Bilder) ===
mkdir -p "$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/architecture"

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/architecture/20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_104.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4481963104/render.png?token=exp=1782518400~hmac=add03e5d486afc0ef9824de38b0c0ff9ba6992971f5ff1faef3d4859f7582e19"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="1959–1965 Mercedes-Benz 220 SE (W111) — staircase-chamber silence cover, metallic whisper edition" \
      -DateTimeOriginal="2026-06-02T23:11:43+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_104.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_104.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/architecture/20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_105.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4481940671/render.png?token=exp=1782518400~hmac=6057e1dbd058bb0cf687f610642601af04d27c904d7e171dfcfa28af374bc35b"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="1959–1965 Mercedes-Benz 220 SE (W111) — pillar-hall relic cover, metallic whisper edition" \
      -DateTimeOriginal="2026-06-02T23:11:37+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_105.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_105.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/architecture/20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_106.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4481919525/render.png?token=exp=1782518400~hmac=f6c46f097322308ef57159466cdc394608a83a8025a615428f0daeb5e5f5a427"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="1959–1965 Mercedes-Benz 220 SE (W111) — concrete cathedral cover, metallic whisper edition" \
      -DateTimeOriginal="2026-06-02T23:11:32+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_106.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_106.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/architecture/20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_107.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4481894200/render.png?token=exp=1782518400~hmac=6ed6b08a09c6a8f90d5f12286e9ac98d72c15917d7cd11b5bb01b76a0764e708"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="1962 Mercedes-Benz 220 SE — Pillar hall with linear rhythm" \
      -DateTimeOriginal="2026-06-02T23:09:57+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_107.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_107.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/architecture/20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_108.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4481740510/render.png?token=exp=1782518400~hmac=43b76db579bcc476e3c478be9e3223078629f095a1582be7bfb2e14f38836361"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="1964 Mercedes-Benz 220 SE (W111) — brutalist concrete atrium with narrow side opening, emblem bar edition" \
      -DateTimeOriginal="2026-06-02T21:56:31+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_108.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_108.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/architecture/20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_109.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4481336389/render.png?token=exp=1782518400~hmac=9f7182c15a09c35f4a799c16faeef9efcbf8a2127e018ee91bc7c3fabb7f9b8c"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Structural Flow Machine — Layered Overpass Frame" \
      -DateTimeOriginal="2026-06-02T20:51:21+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_109.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_109.png"
  fi
fi

# === reference_images (18 Bilder) ===
mkdir -p "$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/reference_images"

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/reference_images/20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_110.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4487087241/upload.png?token=exp=1782518400~hmac=afeca5f1fd73fc078fa79e6fa58db4479863895161b0d38366d9c33bb7c0f6ab"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="" \
      -DateTimeOriginal="2026-06-03T11:44:18+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_110.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_110.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/reference_images/20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_111.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4486297216/upload.png?token=exp=1782518400~hmac=8264577246839e6545a0e3b41a2ce7d8d7989cb85fcd3bd7ee21616ecd71cd46"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="" \
      -DateTimeOriginal="2026-06-03T10:37:09+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_111.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_111.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/reference_images/20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_112.jpg"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4481852673/magnific-stylename-realisticautomo-lutqeajswo.jpg?token=exp=1782518400~hmac=f4d1b2dc9943398fa72567980487169539d7fca7cfa79d486fe7a82330ab1aae"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="3D: A grey 1960s Mercedes-Benz sedan shown from three different angles" \
      -DateTimeOriginal="2026-06-02T23:06:28+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_112.jpg"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_112.jpg"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/reference_images/20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_113.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4481872713/render.png?token=exp=1782518400~hmac=ea8c17a387e61ea45f0ae48c2d712546f8e30c75662733968078910b59127978"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Technical orthographic blueprint — Mercedes-Benz 220 SE (W111)" \
      -DateTimeOriginal="2026-06-02T23:04:58+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_113.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_113.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/reference_images/20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_114.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4481338216/upload.png?token=exp=1782518400~hmac=9036418848f4c07120cb2cd0c482668ca5e5e98bf68f6b37504826ef573d33e4"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Realistic Automotive Blueprint v1 — Mercedes-Benz 220 SE (W111)" \
      -DateTimeOriginal="2026-06-02T21:31:11+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_114.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_114.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/reference_images/20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_115.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4475012326/render.png?token=exp=1782518400~hmac=e73f9b47b939d06d3abff1baedb820fe897290e518ee235e88e968fb1a3410bb"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="recreate the @img2 in the style of @img1" \
      -DateTimeOriginal="2026-06-02T10:47:47+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_115.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_115.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/reference_images/20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_116.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4470965147/render.png?token=exp=1782518400~hmac=999cae26f39c67ca3d961476dead7a5abf6434d4310173ea76c8b58248324469"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Technical orthographic blueprint — Mercedes-Benz 220 SE (W111)" \
      -DateTimeOriginal="2026-06-02T01:05:05+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_116.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_116.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/reference_images/20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_117.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4470205432/render.png?token=exp=1782518400~hmac=e921c137ed09d3871f8156a61236b9fd3b5b2c2e4c5290e720c82b3327c51d1b"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="recreate the @img1 in the style of @img2" \
      -DateTimeOriginal="2026-06-01T21:59:34+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_117.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_117.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/reference_images/20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_118.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4469957924/upload.png?token=exp=1782518400~hmac=b729cc102512dd4673a76502d4771fcdf551ffc1cfb75ca383c090d89b37726b"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Realistic Automotive Blueprint v1 — Mercedes-Benz 220 SE (W111)" \
      -DateTimeOriginal="2026-06-01T21:23:49+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_118.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_118.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/reference_images/20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_119.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4469595520/render.png?token=exp=1782518400~hmac=1c0059fe6b25546a8cddadc710a1339977bd73201a2eeb377e3c7e1b5c53ee9d"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Realistic Automotive Blueprint v1 — Mercedes-Benz 220 SE (W111)" \
      -DateTimeOriginal="2026-06-01T20:12:36+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_119.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_119.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/reference_images/20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_120.jpg"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4469244430/62624-2.jpg?token=exp=1782518400~hmac=b76ed6fed0bdef71c37749f3d82cb84c311e0371de3b828339fadd8dff80e00f"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Photo: A vintage light blue Mercedes-Benz sedan with chrome accents and yellow fog lights" \
      -DateTimeOriginal="2026-06-01T19:46:58+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_120.jpg"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_120.jpg"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/reference_images/20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_121.jpg"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4469244386/62624-5.jpg?token=exp=1782518400~hmac=bafea321eebd00ef2c60e61a3ae2e9e0551e481effe79412dee73571ffdc8c59"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Photo: A light blue 1960s Mercedes-Benz sedan with chrome accents and yellow headlights" \
      -DateTimeOriginal="2026-06-01T19:46:58+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_121.jpg"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_121.jpg"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/reference_images/20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_122.jpg"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4469244369/62624-7.jpg?token=exp=1782518400~hmac=6518500863530d71f2dbc10080896d3fb094dc5ea1a0745a99c44019912d36ec"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Photo: Rear view of a light blue 1960s Mercedes-Benz 300 SE sedan" \
      -DateTimeOriginal="2026-06-01T19:46:58+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_122.jpg"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_122.jpg"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/reference_images/20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_123.jpg"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4469244340/62624-8.jpg?token=exp=1782518400~hmac=bdd7493150821cb93924f39ca4b73778cb764b5cd95daf22e80deafeb5cfa20f"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Photo: A light blue 1960s Mercedes-Benz sedan parked indoors" \
      -DateTimeOriginal="2026-06-01T19:46:57+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_123.jpg"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_123.jpg"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/reference_images/20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_124.jpg"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4469244337/62624-1.jpg?token=exp=1782518400~hmac=f613e08ef3c3cd1e7bd3761cae56f688aeb6bb7fda8e157f681764c30e008996"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Photo: A light blue 1960s Mercedes-Benz sedan parked indoors on a polished concrete floor" \
      -DateTimeOriginal="2026-06-01T19:46:57+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_124.jpg"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_124.jpg"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/reference_images/20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_125.jpg"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4469244302/62624-4.jpg?token=exp=1782518400~hmac=3091872bf011debf302707ae13d84e48672345945c7af4b367dfe334aaef61aa"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Photo: A light blue 1960s Mercedes-Benz sedan parked on a polished concrete floor in a studio" \
      -DateTimeOriginal="2026-06-01T19:46:57+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_125.jpg"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_125.jpg"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/reference_images/20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_126.jpg"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4469244227/62624-3.jpg?token=exp=1782518400~hmac=2761309c1028fe0f1532025772da7cfbba006bf69271e97cf2f0b7763aad49e4"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Photo: A light blue 1960s sedan car, viewed from the side, parked indoors" \
      -DateTimeOriginal="2026-06-01T19:46:57+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_126.jpg"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_126.jpg"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/reference_images/20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_127.jpg"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4469244105/62624-6.jpg?token=exp=1782518400~hmac=5839bc556ab71adb59a30cdae9b5f5886224994af883ca73b791bd11a06337c8"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Photo: A light blue 1960s Mercedes-Benz sedan parked indoors with a white wall and ceiling" \
      -DateTimeOriginal="2026-06-01T19:46:56+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_127.jpg"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260601_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_127.jpg"
  fi
fi

# === studio (5 Bilder) ===
mkdir -p "$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/studio"

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/studio/20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_128.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4482234997/render.png?token=exp=1782518400~hmac=4987e0be74b3f228550f865928bcc39ad338a790a2f104d30a3df1fe89cdcab5"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Mercedes-Benz 220 SE (W111) — Full form silhouette in ultra-dark gallery + Pure Silhouette Study" \
      -DateTimeOriginal="2026-06-02T23:58:34+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_128.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_128.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/studio/20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_129.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4482215815/render.png?token=exp=1782518400~hmac=d3d421d0158f81e97d9f02e7d6ba5b6d5c8674dfb27837ed78d75df7136371b3"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Mercedes-Benz 220 SE (W111) — Roofline and glass edge highlight + Minimal Apex Icon" \
      -DateTimeOriginal="2026-06-02T23:58:24+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_129.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_129.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/studio/20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_130.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4482194551/render.png?token=exp=1782518400~hmac=26522d80ee60513824ac399c6a36a6b20a954e8a891bc2ea75af0cab3c02055b"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Mercedes-Benz 220 SE (W111) — Headlight signature minimal fragment + Abstract Velocity Form" \
      -DateTimeOriginal="2026-06-02T23:58:19+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_130.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_130.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/studio/20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_131.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4482153128/render.png?token=exp=1782518400~hmac=64141ed8e8825b458f2a4f69a9abc5ea1a50a781d6e18ecabe1264ee618069a5"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Mercedes-Benz 220 SE (W111) — Rear wing silhouette study + Blade in Darkness" \
      -DateTimeOriginal="2026-06-02T23:58:05+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_131.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_131.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/studio/20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_132.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4482129609/render.png?token=exp=1782518400~hmac=52807bac4922dde3d3ab937b394867ecd79dd7fbfc81640b43cafd19e67d4781"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Mercedes-Benz 220 SE (W111) — Side profile in 85% black + Silent Artifact" \
      -DateTimeOriginal="2026-06-02T23:58:00+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_132.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260602_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_132.png"
  fi
fi

# === urban (14 Bilder) ===
mkdir -p "$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/urban"

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/urban/20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_133.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4488581928/render.png?token=exp=1782518400~hmac=45b522c01d11e3ee4bb34a3e9cf51a6bc89743ff200df69d778078ffe7792099"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Italian Provincial Art Film 1972 mode — Frontal view, roadside fuel stop in light drizzle" \
      -DateTimeOriginal="2026-06-03T12:50:02+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_133.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_133.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/urban/20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_134.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4488362529/render.png?token=exp=1782518400~hmac=e3e1c78662b543ef88d471497a495df429dc3ecafb205ebbab7c0de6331b1e0e"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Italian Provincial Art Film 1972 mode — rain-soaked provincial service station" \
      -DateTimeOriginal="2026-06-03T12:33:46+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_134.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_134.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/urban/20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_135.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4488078878/render.png?token=exp=1782518400~hmac=42bbdf89565a6283ee6e1d7c25d7841094d050f4e63008c7c5313612b8dce6d9"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Italian Provincial Art Film 1972 mode — quiet roadside fuel stop in light drizzle" \
      -DateTimeOriginal="2026-06-03T12:24:53+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_135.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_135.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/urban/20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_136.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4487995282/render.png?token=exp=1782518400~hmac=f4efb7b10caf6b9c1f29e9194b21247acda4e8d26e5a669dcedbf7aef271cdf8"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Italian Provincial Art Film 1972 mode — small provincial petrol station at night rain" \
      -DateTimeOriginal="2026-06-03T12:24:49+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_136.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_136.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/urban/20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_137.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4487846826/render.png?token=exp=1782518400~hmac=ea30433f9533a7982fafa163d739ff29b543df111287b1d08334ab9200770969"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Italian Provincial Art Film 1972 mode — small provincial petrol station at night rain" \
      -DateTimeOriginal="2026-06-03T11:53:47+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_137.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_137.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/urban/20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_138.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4487701726/render.png?token=exp=1782518400~hmac=c6b29e92a49b159e2ab36025b2825498fe59d07d79fa40471f30019298ec196c"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Italian Provincial Art Film 1972 mode — rain-soaked provincial service station" \
      -DateTimeOriginal="2026-06-03T11:47:53+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_138.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_138.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/urban/20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_139.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4487630403/render.png?token=exp=1782518400~hmac=7b78d23f370728366cab0e92740e2b3b6b9e6ded0604159b7b553fb91cf8fc7b"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Italian Provincial Art Film 1972 mode — wet concrete forecourt in small town" \
      -DateTimeOriginal="2026-06-03T11:47:46+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_139.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_139.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/urban/20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_140.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4487561155/render.png?token=exp=1782518400~hmac=86751ec23a73cd459b6e804765680aaa604153f6544f80611a2df359268518d8"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Italian Provincial Art Film 1972 mode — rural gas station with sodium lamps" \
      -DateTimeOriginal="2026-06-03T11:47:39+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_140.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_140.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/urban/20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_141.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4487484191/render.png?token=exp=1782518400~hmac=85421919f285b24980caf3f669cc779d1d4f3da7c7da82a9ff37cd5f61da6e5f"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Italian Provincial Art Film 1972 mode — quiet roadside fuel stop in light drizzle" \
      -DateTimeOriginal="2026-06-03T11:47:30+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_141.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_141.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/urban/20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_142.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4487339777/render.png?token=exp=1782518400~hmac=7878a854bf2e3988aaec20c2ca3d29abf321f294e5321a81a9d1b33886b3c7c0"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Italian Provincial Art Film 1972 mode — rural gas station with sodium lamps" \
      -DateTimeOriginal="2026-06-03T11:43:50+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_142.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_142.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/urban/20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_143.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4487274690/render.png?token=exp=1782518400~hmac=b54ee5ea525f1471b1dacdf729575d7f9c8791b94ee16d90281cec6ba98b30a9"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Italian Provincial Art Film 1972 mode — rural gas station with sodium lamps" \
      -DateTimeOriginal="2026-06-03T11:43:42+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_143.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_143.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/urban/20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_144.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4487138758/render.png?token=exp=1782518400~hmac=19903fde7b30a1987e3e282a0b4494dc16edca27507012dd046f902046040661"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Italian Provincial Art Film 1972 mode — rural gas station with sodium lamps" \
      -DateTimeOriginal="2026-06-03T11:38:53+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_144.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_144.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/urban/20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_145.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4487068123/render.png?token=exp=1782518400~hmac=05a00fe2ba8bc1d9abfe24c33b21a52b8d2cce143505972d749416255ad3eb8a"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Italian Provincial Art Film 1972 mode — small provincial petrol station at night rain" \
      -DateTimeOriginal="2026-06-03T11:37:41+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_145.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_145.png"
  fi
fi

FPATH="$DIR/Spaces/1963-Mercedes-Benz-220-SEB-Heckflosse-W111/urban/20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_146.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4486987774/render.png?token=exp=1782518400~hmac=fa8e07277a50fed81f4a780c96738e5209f48e34322c6e5d8a1f2bba9c4773a1"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111" \
      -Description="Italian Provincial Art Film 1972 mode — small provincial petrol station at night rain" \
      -DateTimeOriginal="2026-06-03T11:29:49+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_146.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1963-Mercedes-Benz-220-SEB-Heckflosse-W111_Magnific_146.png"
  fi
fi

echo ""
echo "=== Mercedes W111 Heckflosse ==="
echo "Heruntergeladen: $DOWNLOADED"
echo "Übersprungen: $SKIPPED"
echo "Fehlgeschlagen: $FAILED"
