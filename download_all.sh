#!/bin/bash
# Magnific Image Downloader mit EXIF-Metadaten
# Generiert am 2026-06-22
# Benötigt: curl, exiftool

DIR="$HOME/Downloads/magnific"
SKIPPED=0
DOWNLOADED=0

# === Spaces/1967 Ferrari 330GTC ===
echo "--- Spaces/1967 Ferrari 330GTC ---"
mkdir -p "$DIR/ferrari_275gtb4/reference_images"
FPATH="$DIR/ferrari_275gtb4/reference_images/20260601_1967-Ferrari-330GTC_Magnific_001.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4469234047/render.png?token=exp=1782518400~hmac=857f99d99e3ef7f3a194ddfe34811e0b30e7849500719e6733d0016cf270eab3"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 001' -Description='Vehicle: 1965–1967 Ferrari 330 GT 2+2 (Series II), Azzurro blue (covered in a heavy layer of barn-find dust), New Jersey license plate "155-SXE" on front and rear bumpers, classic 10-hole magnesium alloy wheels, original wood-rimmed Nardi steering wheel with a center-mounted Prancing Horse horn button, dual horizontal rear light lenses.

Add a small text caption at the very bottom of the image, centered, clean sans-serif typography, small size, light grey:[MANUFACTURER] · [MODEL] · [YEAR]

{
  "style_name": "Realistic_Automotive_Blueprint_v1",
  "version": "1.3",
  "rendering_mode": "photographic",
  "vehicle": {
    "manufacturer": "Ferrari",
    "model": "330 GT 2+2 (Series II)",
    "year": "1965-1967",
    "caption": "FERRARI · 330 GT 2+2 · 1965-1967",
    "identifying_features": {
      "body_color": "Azzurro blue, covered uniformly in a heavy layer of barn-find dust that dulls reflections and softens highlights across all views",
      "wheels": "classic 10-hole magnesium alloy wheels, period-correct Ferrari pattern, dusty and slightly oxidized but clearly showing the ten round cooling holes",
      "cockpit": "original wood-rimmed Nardi steering wheel with a center-mounted Prancing Horse horn button, visible through the glass; light patina on the wood, slightly dusty interior surfaces",
      "engine_cover": "long front bonnet with subtle central power bulge and correct Series II grille and headlamp arrangement inferred from references",
      "license_plates": "New Jersey license plate \"155-SXE\" mounted on both front and rear bumpers, slightly obscured by dust but fully legible",
      "rear_lights": "dual horizontal rear light lenses on each side, correct for 330 GT 2+2 Series II, lightly dulled by barn dust",
      "trim_chrome": "all chrome and brightwork slightly muted by dust layer, with soft, realistic specular highlights where dust is thinner",
      "glass": "clear but dusty glazing with a fine, even film of barn dust, soft reflections consistent across all views"
    },
    "do_not_substitute": "Do not replace or approximate any identifying Ferrari 330 GT 2+2 (Series II) feature. The classic 10-hole magnesium alloy wheels, dual horizontal rear light lenses, and original Nardi wood-rimmed steering wheel must appear correctly and consistently in all views. Do not substitute wheels, tail lamps, or steering wheel design from other Ferrari models."
  },
  "canvas": {
    "width": 3072,
    "height": 5460,
    "aspect_ratio": "9:16",
    "background_color": "#FFFFFF"
  },
  "layout": {
    "rows": [
      { "row": 1, "views": ["front", "rear"], "arrangement": "side_by_side" },
      { "row": 2, "views": ["left_side", "right_side"], "arrangement": "stacked_vertical" },
      { "row": 3, "views": ["top"], "arrangement": "centered_full_width" }
    ],
    "auto_scale_correction": true,
    "consistent_scale": true
  },
  "rendering": {
    "camera": {
      "type": "orthographic",
      "focal_length_mm": 0,
      "exposure_ev": 0,
      "white_balance_K": 5600
    },
    "lighting": {
      "studio_type": "softbox_array",
      "direction": "top_soft_fill",
      "contrast_ratio": 1.7,
      "ambient_strength": 0.55,
      "description": "even diffused studio light from multiple angles — neutral, controlled, purely functional documentation lighting as if photographed under large format studio conditions; dust layer should be clearly visible without harsh glare"
    },
    "shadow": {
      "type": "contact_shadow",
      "color": "#AAA",
      "opacity": 0.7,
      "edge_softness": 0.25,
      "length_factor": 0.08
    },
    "reflection": {
      "mode": "reference_matched",
      "description": "realistic reflections and specularity appropriate for a dusty barn-find Ferrari — paint reflections are softened and slightly diffused by dust, chrome has subdued but accurate highlights, glass shows softened studio reflections"
    },
    "materials": {
      "source": "reference_images_only",
      "instruction": "Extract all material properties — Azzurro blue paint color (under dust), wheel surface and finish, leather and interior trim, rubber quality and tone, polished metal areas and their reflection quality — directly and exclusively from the provided reference images. Respect the heavy barn-dust layer across all exterior surfaces; it should visibly mute color saturation and reflections without hiding the car’s form."
    }
  },
  "rules": {
    "no_perspective": true,
    "same_scale_all_views": true,
    "single_canvas": true,
    "no_annotations": true,
    "no_measure_lines": true,
    "no_text_labels": true,
    "no_web_search": true,
    "use_reference_images_only": true,
    "no_cgi_aesthetic": "result must read as a photograph of a real Ferrari 330 GT 2+2 (Series II) under studio light — not a 3D render, not Octane, not Blender, not a CGI material simulation",
    "wheel_critical": "classic 10-hole magnesium alloy Ferrari wheels must be correct and consistent in all views — this is non-negotiable",
    "material_source_critical": "all surface materials, including the barn-find dust layer, are extracted from reference images only — no substitution, no interpretation, no training memory"
  },
  "goal": "Orthographic multi-view reference sheet of a 1965–1967 Ferrari 330 GT 2+2 (Series II) in Azzurro blue, covered in a heavy barn-find dust layer, photographed in a neutral white studio. All views under even diffused studio light, zero perspective distortion, consistent scale. Use only the provided reference images as the sole source of all visual information — vehicle geometry, surface materials, paint color, wheel design, interior details, rubber, and all dust-covered surfaces. Do not perform web searches. Do not substitute any detail from training memory. White background, no annotations, no labels, no measurement lines. Caption bottom center in small light grey sans-serif: FERRARI · 330 GT 2+2 · 1965-1967"
}' -DateTimeOriginal='2026-06-01T19:37:19+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260601_1967-Ferrari-330GTC_Magnific_001.png"
fi
mkdir -p "$DIR/ferrari_275gtb4"
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_002.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3885224298/render.png?token=exp=1782518400~hmac=7c0427761b51a2354e5f711f0afea0a900d03ad8a92b400a54f2d2875b0d16a9"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 002' -Description='[1967 Ferrari 275 GTB/4 — confirmed via web search]

Active references in this prompt:
@img3  — vehicle geometry and proportions
@img2  — silhouette and structural geometry verification
@img4  — surface details, badges, grille, wheels, trim in decay
@img5  — multi-angle cross-reference for panel accuracy and original paint color
@img6  — cockpit elements if visible through damage or open doors
@[ced9fb6b-97aa-4598-ac41-fc47e07bae11:Style:output]  — color character, contrast behavior, grain intensity, print quality

Backyard behind an auto shop in Tijuana, Baja California: the 1967 Ferrari 275 GTB/4 is half hidden under a sagging tarp beside an adobe wall and bougainvillea, driver door ajar with cracked side glass, allowing a partial view of the wood dash and steering wheel. Shot from overhead on a low rooftop with a Nikon F3 + 24mm lens; Kodak Ektar (original 1980s) pushes saturated color and strong contrast, making the bougainvillea magenta vivid against oxidized gold paint and rust. Composition axes chosen: vast landscape / overhead / half hidden / vehicle and environment equal. Bright coastal sun and hard shadows reveal blistered paint lifting to primer along the roof edge, orange-brown rust bleeding from trim seams, chrome window surround dulled, and inside the cabin the black seats show sun-bleached grey streaking and dust; slight warm yellow cast in highlights, cyan shadows under the tarp, and dense grain where the interior falls dark.

period-correct color analog rendering, visible grain in shadow areas, film-characteristic color cast, aged and honest color — not corrected, not optimized — vehicle fidelity: reproduce with exact fidelity using @img3  and @img2  for geometry, @img4  for surface and detail accuracy showing period-correct decay, @img5  for panel cross-reference and original paint color reference, @img6  if cockpit visible through damage — body proportions, silhouette, roofline, wheel arch, headlights, taillights, grille, bumpers, mirrors, windows, pillars, wheels, rims, emblems, badges, decals — all at identical positions, zero deviation permitted, decay colors consistent with abandonment and location — no visible light sources no spotlights no studio elements no softbox no modern lighting no restoration no cleaning no showroom aesthetic no modern digital color grading no HDR — do NOT reproduce any reference photographically — use @img3  and @img2  for vehicle geometry — use @img4  for surface accuracy in decay — use @img5  for multi-angle cross-reference and original paint color — use @img6  only if cockpit visible through damage — apply @img1  only for color character, contrast behavior, grain intensity, and print quality — do NOT reproduce @img1  as a scene or location reference' -DateTimeOriginal='2026-04-08T13:06:51+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_002.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_003.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3885232169/render.png?token=exp=1782518400~hmac=7aa70613825216806ff3305580d7d3c79a45adb9dd2eaa974be1701ce5d0ba00"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 003' -Description='[1967 Ferrari 275 GTB/4 — confirmed via web search]

Route 66 roadside pull-off near Seligman, Arizona: only the rear bumper corner and twin exhaust outlets of the 1967 Ferrari 275 GTB/4 are visible, cropped tight as the rest disappears behind a leaning, windblown advertising sign and tumbleweed. Shot at eye level with a Leica M4 + 90mm lens; Agfachrome CT18 adds slightly greenish midtones with warm highlights.' -DateTimeOriginal='2026-04-08T13:06:48+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_003.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_004.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3885226181/render.png?token=exp=1782518400~hmac=925932eeab7af90324eebf1cbfa106d1e68494c3d517b7bd6b0165fb66148b91"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 004' -Description='[1967 Ferrari 275 GTB/4 — confirmed via web search]

Rural barn outside Ennis, Texas: the 1967 Ferrari 275 GTB/4 is parked deep in hay dust under a corrugated roof, only the front-left corner visible through a broken plank gap, the oval grille and one covered headlamp peeking out of darkness. Shot at ground level with a Canon AE-1 + 35mm lens; Kodachrome 64.' -DateTimeOriginal='2026-04-08T13:06:40+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_004.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_005.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3885220990/render.png?token=exp=1782518400~hmac=65d7c9e8b5ceca5b681f62f28806884d1eda6de43e8e8e64121d96d7404938d7"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 005' -Description='[1967 Ferrari 275 GTB/4 — confirmed via web search]

Abandoned motel parking lot outside Tonopah, Nevada: the champagne-gold 1967 Ferrari 275 GTB/4 sits half-sunk into cracked concrete beside a sun-faded pastel motel wall and dead neon, rear quarter closest to camera. Shot at knee height with a Nikon F3 + 50mm lens; Kodak Ektachrome 100.' -DateTimeOriginal='2026-04-08T13:06:32+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_005.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_006.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884951834/render.png?token=exp=1782518400~hmac=0a46b8b339377cc73c8c83b609852e1248fd03b6cde182209b47e4d3cc84f819"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 006' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

A long-telephoto compression shot from far across the headland, the coastline and road flattened into layered bands while the car reads as a precise silhouette in pure side profile hugging the asphalt.' -DateTimeOriginal='2026-04-08T12:47:49+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_006.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_007.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884954357/render.png?token=exp=1782518400~hmac=113531c24636844560f2a49768b04c928b38711ce0c36e5d7f82f1a3f7d4bc2b"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 007' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

An extreme macro study of the rear quarter — the champagne paint skin, the subtle metallic flake, and the chrome bumper curvature occupy the frame while the distant ocean becomes abstracted streaks of blue.' -DateTimeOriginal='2026-04-08T12:47:40+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_007.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_008.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884955868/render.png?token=exp=1782518400~hmac=2df9d22155e41cc34f5709f09563d941bcd65eb51a2a70e71d84da026720cca8"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 008' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

An expansive elevated panorama at golden hour capturing the coastal headlands and winding road, the ocean a deep cobalt plane punctuated by white surf, the car reduced to a precise instrument within a vast seascape.' -DateTimeOriginal='2026-04-08T12:47:36+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_008.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_009.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884953719/render.png?token=exp=1782518400~hmac=05952523a3565b247b1f3c525d7bc75ca344d7e61bb979b6b6f8a5d179ed4f4c"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 009' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

A low, ground-level panning shot along a sunlit coastal ribbon road at late afternoon.' -DateTimeOriginal='2026-04-08T12:47:32+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_009.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_010.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884496010/upload.png?token=exp=1782518400~hmac=b9916b3614c17f28fb655d160046f2c9067630d4c40bfa9678e15d25f50fb277"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 010' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

Mid-distance panning shot alongside the coupe, camera moving parallel to the car to freeze the Ferrari rear three-quarter while the underpass columns streak into horizontal motion blur.' -DateTimeOriginal='2026-04-08T12:16:19+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_010.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_011.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884436687/upload.png?token=exp=1782518400~hmac=ca39babc52a8db7de39711d02ffaf41e9305880b24f1a615891fa0031f68b0ee"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 011' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

Mid-distance panning shot alongside the coupe, camera moving parallel to the car to freeze the Ferrari rear three-quarter while the underpass columns streak into horizontal motion blur.' -DateTimeOriginal='2026-04-08T12:12:04+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_011.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_012.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884415565/render.png?token=exp=1782518400~hmac=f1e7ede688b401e743dfd677936799e82469092ac88b4ca95f427a24881b21c0"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 012' -Description='1967 Ferrari 275 GTB/4
Render a tight crop on the front corner at ground level along the rocker line, focusing on the oval headlamp under its clear cover, the small amber marker, and the thin chrome bumper line.' -DateTimeOriginal='2026-04-08T12:08:56+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_012.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_013.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884411379/render.png?token=exp=1782518400~hmac=d29110355dc2b5c78836fc36b106b31905c8202b778976a3b480859d2b9676b9"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 013' -Description='1967 Ferrari 275 GTB/4
Show the interior only from the driver position, camera tucked just behind the steering wheel rim so the wood wheel, classic gauge cluster, and the wood dash fascia with its period switches read exactly as in the interior references.' -DateTimeOriginal='2026-04-08T12:08:54+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_013.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_014.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884414452/render.png?token=exp=1782518400~hmac=1afea306ad91e39a6cc5f52b310b39f20c547a129a3c712413c63f6236850c1d"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 014' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

Mid-distance front three-quarter captured on a diagonal for built-in tension: the car set against a brooding desert sky and cracked forecourt, dutch tilt lending a sense of imminent motion.' -DateTimeOriginal='2026-04-08T12:08:54+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_014.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_015.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884403333/render.png?token=exp=1782518400~hmac=3370feb166ac17b8b5dd4f7c152f18d2e6617de06abeb35941fa6afdeb25633d"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 015' -Description='1967 Ferrari 275 GTB/4
Frame a rear three-quarter view from knee height with a slight upward tilt so the long tail, round rear lamps, chrome bumper, and quad exhausts sit heavy against the desolate roadside setting.' -DateTimeOriginal='2026-04-08T12:08:51+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_015.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_016.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884403404/render.png?token=exp=1782518400~hmac=26ae1a47bf755f6c469c26c04ac0293a9fa7ba2689c105d2723995c02bb83794"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 016' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

Vast landscape compression: the car reduced to a precision accent against distant mountains and the abandoned forecourt under heavy, layered storm clouds.' -DateTimeOriginal='2026-04-08T12:08:50+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_016.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_017.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884398396/render.png?token=exp=1782518400~hmac=4e822fe78f601df6eddf383fdbbd9954f024d9328995bd3eebfb2eb2f73136f6"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 017' -Description='1967 Ferrari 275 GTB/4
Capture an extreme macro pressed close to the rear deck badge area so the prancing horse emblem and the spaced FERRARI letters fill the frame.' -DateTimeOriginal='2026-04-08T12:08:47+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_017.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_018.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884401295/render.png?token=exp=1782518400~hmac=4d7c7e7a0105bb6cf240369d0caedbbaeeafd33c925e0f8b09cb2ac2b1c9cfbd"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 018' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

A wide, elevated study of solitude beneath a slate sky: the derelict service station, cracked concrete and distant mountain ridgeline form a desaturated, cinematic backdrop while the Ferrari sits centered but small.' -DateTimeOriginal='2026-04-08T12:08:45+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_018.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_019.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884409199/render.png?token=exp=1782518400~hmac=4b5eca95ed3be00884c5a6f0faaa3686f7a501ff11b2f39c5ab6ec43711ff749"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 019' -Description='1967 Ferrari 275 GTB/4
Photograph the car in strict side profile from wheel-height with a neutral, documentary stillness, letting the champagne-gold paint read exactly as referenced with its subtle surface texture.' -DateTimeOriginal='2026-04-08T12:08:43+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_019.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_020.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884395854/render.png?token=exp=1782518400~hmac=ba9f36de23082d9c87e6486345119d605c6cf1e3dd5b5e37005d10e40ad01a46"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 020' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

A storm-heavy desert forecourt under brooding, high-contrast clouds; extreme macro on the rear quarter: the chrome bumper, twin exhaust outlets and the circular rear lamp dominate the frame.' -DateTimeOriginal='2026-04-08T12:08:30+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_020.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_021.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884261011/render.png?token=exp=1782518400~hmac=677ab8a676afc82c7494a2239f310fb7461bbd42bf3795728c5fb884d7cdbc22"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 021' -Description='[1967 Ferrari 275 GTB/4]
EXACT reproduction of @img5 
Multiple camera angles and compositions of the Ferrari on a bright desert roadside with blue sky.' -DateTimeOriginal='2026-04-08T11:58:20+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_021.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_022.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884222869/render.png?token=exp=1782518400~hmac=52fcf730ae183f267e4268450596082bfc3e6a055ca2258b788facc528214b75"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 022' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

Extreme macro of the rear chrome prancing horse and surrounding coupe sheet metal, the champagne metallic paint capturing a single sliver of angled shaft light from the concrete underpass world.' -DateTimeOriginal='2026-04-08T11:55:34+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_022.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_023.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884206660/render.png?token=exp=1782518400~hmac=3c4b99336a2d6a9566173e72a25a8009f9765aa5905be0e1d87706aa920e63a5"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 023' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

Mid-distance panning shot alongside the coupe, camera moving parallel to the car to freeze the Ferrari rear three-quarter while the underpass columns streak into horizontal motion blur.' -DateTimeOriginal='2026-04-08T11:54:30+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_023.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_024.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884202101/render.png?token=exp=1782518400~hmac=fe9ebad15ef7651b1bdbb48159579e70779a25442cbf5eac0afba9bbe9a52cac"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 024' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

Wide, elevated view revealing the underpass grid of repeating concrete ribs with the Ferrari small and precise in a central pool of light, the architectural shadows dominating the frame.' -DateTimeOriginal='2026-04-08T11:54:20+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_024.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_025.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884202898/render.png?token=exp=1782518400~hmac=4f2ca06dcacc3b73a197ede454d4bf7c155438f23dde349ba9993da9876dcbf4"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 025' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

Mid-distance front three-quarter composition beneath the concrete ribs of the underpass, the gold-champagne coupe occupying most of the frame with long diagonal shafts of cool light cutting across its bonnet and roof.' -DateTimeOriginal='2026-04-08T11:54:17+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_025.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_026.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884202774/render.png?token=exp=1782518400~hmac=612eadf8519cab5d679cfcd3f8e9abee8e9247ae8e3ebf3c005bb9d4d3c50c2c"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 026' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

Tight crop on the left front headlight and bumper bezel, the oval glass catching a narrow beam from the underpass.' -DateTimeOriginal='2026-04-08T11:54:13+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_026.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_027.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884159295/render.png?token=exp=1782518400~hmac=73afabe851e08664e483df7d28d481ea4318275aa8ccdbf07ca7332d5a669453"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 027' -Description='[1967 Ferrari 275 GTB/4 (Series I)]
EXACT reproduction of @img5
Abstract top-down steep view where vehicle is mostly lost in shadow bands of the underpass architecture.' -DateTimeOriginal='2026-04-08T11:51:13+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_027.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_028.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884141682/render.png?token=exp=1782518400~hmac=c6d4ad89894e824c7edc5894a69b282f6fd2eb9fffa581a619e424d76db94008"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 028' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

From extreme distance with a long telephoto compression, the underpass becomes a rhythmic field of light and shadow and the champagne-gold Ferrari is a pinpoint of mechanical intent at the far center.' -DateTimeOriginal='2026-04-08T11:50:19+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_028.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_029.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884146447/render.png?token=exp=1782518400~hmac=a21dba571dbd5401fc4153af4f004721c50da31f2ecdcce5c241c0253e63fbdb"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 029' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

From extreme distance with a long telephoto compression, the underpass becomes a rhythmic field of light and shadow.' -DateTimeOriginal='2026-04-08T11:50:13+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_029.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_030.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884133184/render.png?token=exp=1782518400~hmac=4af17717ef4cccb7a1263b88dea53546a72fd4efabf8e48baa6bdbb17a6ba34b"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 030' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

From an elevated perch roughly 4 metres above the roadway, the underpass opens into a vast chiaroscuro composition where the champagne-gold Ferrari reads as a precision instrument dwarfed by concrete ribs.' -DateTimeOriginal='2026-04-08T11:49:09+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_030.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_031.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884132914/render.png?token=exp=1782518400~hmac=05ca45a5afd9ea550206e7c10228658c4d35098a07069916cdcc913094849ab6"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 031' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

From an elevated perch roughly 4 metres above the roadway, the underpass opens into a vast chiaroscuro composition.' -DateTimeOriginal='2026-04-08T11:49:03+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_031.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_032.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884127767/render.png?token=exp=1782518400~hmac=16cf229b3e771cb68747efb3d6d97f2cf6d80f3783f8f47f39ee400fbcd04b79"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 032' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

From extreme distance with a long telephoto compression, the underpass becomes a rhythmic field of light and shadow.' -DateTimeOriginal='2026-04-08T11:47:46+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_032.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_033.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884116905/render.png?token=exp=1782518400~hmac=72fac91bac90bb30a7ac012887c013940b4a97132d2de7cb792f13049cd150bb"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 033' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

Panning alongside at speed, the camera tracks the Champagne 275 GTB/4 in a low, lateral sweep that keeps the front three-quarter sharply in focus while the underpass columns and streaked light smear into dynamic bands.' -DateTimeOriginal='2026-04-08T11:47:44+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_033.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_034.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884113726/render.png?token=exp=1782518400~hmac=9a22f158b30b1959ceb8e28f913f5db9cf405086a426c8bd3a42b671ae29cba9"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 034' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

From an elevated perch roughly 4 metres above the roadway, the underpass opens into a vast chiaroscuro composition.' -DateTimeOriginal='2026-04-08T11:47:35+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_034.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_035.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884116429/render.png?token=exp=1782518400~hmac=296afe62ae3a687e46c3391fcff7de41fb5715f8f2cab153b2d670650b7d0585"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 035' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

Under a concrete underpass pierced by diagonal shafts of late-afternoon light, the champagne-gold 1967 Ferrari 275 GTB/4 Series I sits slightly forward in frame, ground-level perspective roughly 30cm above the asphalt.' -DateTimeOriginal='2026-04-08T11:47:33+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_035.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_036.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884052802/render.png?token=exp=1782518400~hmac=e241b2cbcc70e4815224f88247d527183dd90dda35aee5eb1720beef408704d8"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 036' -Description='[1967 Ferrari 275 GTB/4 (Series I)]
EXACT reproduction of @img5
Abstract top-down steep view of underpass architecture with vehicle mostly lost in shadow bands.' -DateTimeOriginal='2026-04-08T11:42:48+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_036.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_037.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884049019/render.png?token=exp=1782518400~hmac=cddd6bcf2448ad6419577d750d21284018ab2c2043840674f7540b24ad177d3d"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 037' -Description='[1967 Ferrari 275 GTB/4 (Series I)]
EXACT reproduction of @img5
Detail extreme macro crop of headlamp + grille corner + paint surface in the underpass.' -DateTimeOriginal='2026-04-08T11:42:46+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_037.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_038.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884048772/render.png?token=exp=1782518400~hmac=156f0d44289e4a70a55b2ec729d0a69e59da6a625967a53a9b61515d3b8ee080"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 038' -Description='[1967 Ferrari 275 GTB/4 (Series I)]
EXACT reproduction of @img5
Detail tight crop on rear quarter: rear wheel, arch, lower chrome, and tail corner in the underpass.' -DateTimeOriginal='2026-04-08T11:42:45+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_038.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_039.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884042205/render.png?token=exp=1782518400~hmac=153e847b86d9ea0c57fa93f5d7e406898d2a403b2996803f9c7a5741a6c883c3"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 039' -Description='[1967 Ferrari 275 GTB/4 (Series I)]
EXACT reproduction of @img5
Structure extreme low tracking angle; vehicle partially occluded by dark foreground shadow band in underpass.' -DateTimeOriginal='2026-04-08T11:42:42+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_039.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_040.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884038528/render.png?token=exp=1782518400~hmac=0c17ee4aafd5ca2c0cc0823556e19e1065c5e6418af00db1b588bd511d896b42"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 040' -Description='[1967 Ferrari 275 GTB/4 (Series I)]
EXACT reproduction of @img5
Structure aggressive right-edge framing; vehicle cropped at rear bumper edge in underpass with ceiling beams dominating.' -DateTimeOriginal='2026-04-08T11:42:39+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_040.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_041.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884040747/render.png?token=exp=1782518400~hmac=e3668eb0ea6c206e6452fe14ecbc6dfaef11b7d38e706f1fdce69838b6a1da22"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 041' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

From an elevated position, the gold Ferrari is captured in pure side profile centered on the roadway in the underpass, the fastback roofline, long bonnet and rear haunches rendered against architectural negative space.' -DateTimeOriginal='2026-04-08T11:42:38+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_041.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_042.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884037909/render.png?token=exp=1782518400~hmac=7da416f57d6e98a09bd51d6bc5d7f0d9ae56e09423c609cb2ce5e5ed851d0f90"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 042' -Description='[1967 Ferrari 275 GTB/4 (Series I)]
EXACT reproduction of @img5
Hero vehicle very small centered in a bright sun band at mid-depth in the deep low-key underpass interior.' -DateTimeOriginal='2026-04-08T11:42:35+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_042.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_043.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3884042725/render.png?token=exp=1782518400~hmac=ad01cd63165e66b13fa4616a0de6a6f278fff93269100ad97d7bb32e3b16a16a"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 043' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

An extreme macro study of the rear chrome bumper and twin exhaust tips framed against the gold-painted rear quarter, clinical in mood yet charged by implied velocity.' -DateTimeOriginal='2026-04-08T11:42:34+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_043.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_044.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883988422/render.png?token=exp=1782518400~hmac=21123d7943dcde3c16f9f4bd2b7daf35527474883a85eb041943a482fef31a47"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 044' -Description='[1967 Ferrari 275 GTB/4 (Series I) — confirmed via web search]

A long-telephoto night vista down the empty city road compresses cracked asphalt and distant towers into layered planes of light.' -DateTimeOriginal='2026-04-08T11:38:03+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_044.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_045.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883974864/render.png?token=exp=1782518400~hmac=8faaeb5547c1c62f173ef1592ab954c3a4dabc10325343569354ed8bf52940ba"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 045' -Description='[1967 Ferrari 275 GTB/4 (Series I) — confirmed via web search]

A wide elevated night composition showing the silent city avenue and distant illuminated skyline, the Ferrari presented in pure side profile and made deliberately small against the urban expanse.' -DateTimeOriginal='2026-04-08T11:37:57+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_045.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_046.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883974805/render.png?token=exp=1782518400~hmac=9a246c6be62c54b86760ea119bdc0f39ad2dc9401dc37e450cbacb6848564937"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 046' -Description='[1967 Ferrari 275 GTB/4 (Series I) — confirmed via web search]

A tight nocturnal crop of the front-left assembly set against the street'\''s warm pools and tree shadows: the left headlamp, surrounding fender curve and chrome bumper.' -DateTimeOriginal='2026-04-08T11:37:54+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_046.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_047.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883973590/render.png?token=exp=1782518400~hmac=284990be8e2d3fe97e3aba490e6ae6c021eb8153c8a7586e60be55faf05b7f37"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 047' -Description='[1967 Ferrari 275 GTB/4 (Series I) — confirmed via web search]

Night-time urban avenue: the Ferrari in gold metallic satin, chrome bumpers, three horizontal side vents, circular tail lamps, period steel rims. Camera positioned at ground level ~30cm along the road, front three-quarter framing.' -DateTimeOriginal='2026-04-08T11:37:51+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_047.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_048.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883959656/render.png?token=exp=1782518400~hmac=7a0894e59457a1a7340670c361792432edc047eba0867f49f4042f8a65d02173"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 048' -Description='[1967 Ferrari 275 GTB/4 (Series I)]
EXACT reproduction of @img5
Abstract B&W countryside road; vehicle partially out of frame at extreme lower right edge with extreme roll rotation.' -DateTimeOriginal='2026-04-08T11:36:15+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_048.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_049.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883951937/render.png?token=exp=1782518400~hmac=c82f95e87e9b34c04e02c4bfd73a63ee1bd1de8e46db6949383e05ca26783a68"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 049' -Description='[1967 Ferrari 275 GTB/4 (Series I)]
EXACT reproduction of @img5
Detail ultra-close B&W; vehicle fragmented, only a slice of body panel and wheel lip sharp with razor thin depth of field.' -DateTimeOriginal='2026-04-08T11:36:12+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_049.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_050.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883954560/render.png?token=exp=1782518400~hmac=c8f2e91e336ba9437aea814b6a8bb1acd950029d86b92120dd7ef4d49668b498"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 050' -Description='[1967 Ferrari 275 GTB/4 (Series I)]
EXACT reproduction of @img5
Detail B&W extreme crop focusing on rear deck/roofline and right rear fender from tight rear 3/4.' -DateTimeOriginal='2026-04-08T11:36:07+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_050.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_051.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883950068/render.png?token=exp=1782518400~hmac=776ec8a44b4ef4f3abae63a355c6b629a31c94045a69d6f0c713482f38487f11"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 051' -Description='[1967 Ferrari 275 GTB/4 (Series I)]
EXACT reproduction of @img5
Structure B&W aggressive low angle emphasizing dashed center line as dominant foreground element with vehicle mid-right.' -DateTimeOriginal='2026-04-08T11:36:02+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_051.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_052.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883949550/render.png?token=exp=1782518400~hmac=ddb51c6ca8a9c9c919b5b1d7de6d40f7c471d673ec6d8af7c8d05437f8830527"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 052' -Description='[1967 Ferrari 275 GTB/4 (Series I)]
EXACT reproduction of @img5
Hero B&W non-standard; vehicle small in lower right with dominant negative space sky and strong leading line from road center dashes.' -DateTimeOriginal='2026-04-08T11:35:59+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_052.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_053.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883922319/render.png?token=exp=1782518400~hmac=340dc441cc067b92c544d6de63ecc871dfc7c8f7dd451167730af1488b9b8cea"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 053' -Description='1967 Ferrari 275 GTB/4 (Series I)
Mid-distance front three-quarter view from waist height with the vehicle filling the frame under stark midday sun on a desert shoulder. Kodachrome 64 with Rolleiflex composure.' -DateTimeOriginal='2026-04-08T11:33:42+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_053.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_054.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883921064/render.png?token=exp=1782518400~hmac=5579df8af89429b3b28cc5885b742da515ae83b3e80945d6c95649a4df260c35"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 054' -Description='1967 Ferrari 275 GTB/4 (Series I)
Extreme macro of the chrome Ferrari script and prancing horse badge on the champagne-gold paint. Kodachrome 25 with Rolleiflex TLR feel.' -DateTimeOriginal='2026-04-08T11:33:36+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_054.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_055.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883915830/render.png?token=exp=1782518400~hmac=8cd18bd2625d578aa09f6b7eac95c2d0f406657fd7d62cc567fbf80c81134815"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 055' -Description='1967 Ferrari 275 GTB/4 (Series I)
Tight, knee-height rear three-quarter view with chrome rear bumper and two round tail lamps prominently visible under harsh midday sun. Kodachrome 64 with Nikon S look.' -DateTimeOriginal='2026-04-08T11:33:32+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_055.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_056.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883918687/render.png?token=exp=1782518400~hmac=43e67a159ad7b5b60f1399686c52342d21d82651e38691c190df04c42840f56b"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 056' -Description='1967 Ferrari 275 GTB/4 (Series I)
Vast, elevated vantage looking down so the vehicle sits small and solitary on the dusty shoulder beside a long, empty two-lane road. Kodachrome 64 from a Leica M3.' -DateTimeOriginal='2026-04-08T11:33:28+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_056.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_057.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883911400/render.png?token=exp=1782518400~hmac=6833182d00c42651cdca5e91a635fe1bfbe695dd8112b15d75a797479642b045"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 057' -Description='1967 Ferrari 275 GTB/4 (Series I)
STUDIO REPRODUCTION
200mm, camera height 95cm, distance 10m. MATERIAL/DETAIL tight on front fender + headlight glass + chrome lip; only 8–12% of car visible.' -DateTimeOriginal='2026-04-08T11:32:56+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_057.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_058.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883909040/render.png?token=exp=1782518400~hmac=e2104664ba1d044320be6b76b992b74b694c8e8f070f27341bb9b8a436440799"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 058' -Description='1967 Ferrari 275 GTB/4 (Series I)
STUDIO REPRODUCTION
135mm, camera height 110cm, distance 5.5m. MATERIAL/DETAIL macro on rear quarter: circular taillight, chrome bumper corner, paint curvature; only 10–15% visible.' -DateTimeOriginal='2026-04-08T11:32:49+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_058.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_059.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883909679/render.png?token=exp=1782518400~hmac=f52f03adfb67f0b57582159c5b378c26043fa2c6e7f741b1f873c7f934153968"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 059' -Description='1967 Ferrari 275 GTB/4 (Series I)
STUDIO REPRODUCTION
35mm, camera height 40cm, distance 2.2m, low angle. FORM EXPLORATION extreme low side profile slice; only 35–45% of car visible.' -DateTimeOriginal='2026-04-08T11:32:46+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_059.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_060.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883905976/render.png?token=exp=1782518400~hmac=e4b34bfcfd098189d1a2ef7bd1c265766de14d54abbe6090f2f9e0ab1d91cfc5"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 060' -Description='1967 Ferrari 275 GTB/4 (Series I)
STUDIO REPRODUCTION
85mm, camera height 120cm, distance 6m, level horizon. HERO front 3/4 view but cropped aggressively so the nose dominates.' -DateTimeOriginal='2026-04-08T11:32:41+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_060.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_061.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883892208/render.png?token=exp=1782518400~hmac=2b3523353aa15b597b2122062588e7f8c96cbc498022a0fbccb3aee7ed458f66"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 061' -Description='[1967 Ferrari 275 GTB/4]
EXACT reproduction of @img5
Abstract against pure black seamless void. Only a sliver of roofline, windshield edge, and one headlamp highlight visible; car occupies ~12% of frame.' -DateTimeOriginal='2026-04-08T11:31:58+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_061.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_062.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883898208/render.png?token=exp=1782518400~hmac=af4b7ebf8f48969f2a3915c421d42846daa36f1a16202dd7c697cf0376bd94a8"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 062' -Description='[1967 Ferrari 275 GTB/4]
EXACT reproduction of @img5
Structure against pure black void. Car mostly hidden in black; only rear quarter, wheel, and thin roof edge readable; visible area ~35%.' -DateTimeOriginal='2026-04-08T11:31:48+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_062.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_063.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883893835/render.png?token=exp=1782518400~hmac=6c114fb036ec758aae223a57ea16bd5b2973dd287d59e1eaacd873b1633219c4"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 063' -Description='[1967 Ferrari 275 GTB/4]
EXACT reproduction of @img5
Structure against pure black void. Front-left quarter dominates with aggressive crop; car coverage ~80%.' -DateTimeOriginal='2026-04-08T11:31:45+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_063.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_064.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883894260/render.png?token=exp=1782518400~hmac=749d844fc7cd60f59bd4484e9f340342461620b29893b0c8a50bf04bd6798044"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 064' -Description='[1967 Ferrari 275 GTB/4]
EXACT reproduction of @img5
Hero full side profile against pure black void, pushed low in frame; car occupies ~55% width with large negative space above.' -DateTimeOriginal='2026-04-08T11:31:42+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_064.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_065.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883837463/render.png?token=exp=1782518400~hmac=52354c3f41529e55eeca6898c6a1bda5bf39e5b402b4b55fb19aaf947fd4d2dc"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 065' -Description='[1967 Ferrari 275 GTB/4]
EXACT reproduction of @img1
Studio cyclorama. Structure aggressive partial crop—rear wheel and tail dominate; front clipped out of frame; subject coverage 85%.' -DateTimeOriginal='2026-04-08T11:27:47+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_065.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_066.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883813355/render.png?token=exp=1782518400~hmac=b8155d593390e7f8e865a4315534e4ea6a136e36e48df5753c689c0693198632"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 066' -Description='1967 Ferrari 275 GTB/4 (Series I) — STUDIO REPRODUCTION: Rear 3/4 but fragmented, only rear window, trunk line, one round taillight, and exhaust tips visible (about 35–45% vehicle).' -DateTimeOriginal='2026-04-08T11:25:08+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_066.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_067.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883808838/render.png?token=exp=1782518400~hmac=5a2ff91bf2166938c8d56564019d3bd9e956028cbb08b589ce9e92e359f45940"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 067' -Description='1967 Ferrari 275 GTB/4 (Series I) — STUDIO REPRODUCTION: Extreme close on triple side vents + lower chrome strip, abstraction-forward.' -DateTimeOriginal='2026-04-08T11:25:06+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_067.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_068.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883800629/render.png?token=exp=1782518400~hmac=65f66ad76a0c40215f02d52a76696580f55738b12d3e300ddf347d34f334ccc6"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 068' -Description='1967 Ferrari 275 GTB/4 (Series I) — STUDIO REPRODUCTION: Strict side profile but cropped, only mid-body to rear quarter visible (about 55% of vehicle).' -DateTimeOriginal='2026-04-08T11:25:02+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_068.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_069.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883799903/render.png?token=exp=1782518400~hmac=7db77912550d223bd664291d92d85d5f6484a597b36034171fa5b0f9278497be"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 069' -Description='1967 Ferrari 275 GTB/4 (Series I) — STUDIO REPRODUCTION: 3/4 front hero, low height ~60cm, car pushed to lower-left, grille and left headlamp dominant.' -DateTimeOriginal='2026-04-08T11:24:59+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_069.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_070.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883795986/render.png?token=exp=1782518400~hmac=9beb574720803191012bdd705bda3c4224b8cb37eb7c2fc183e8a67b86d0298a"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 070' -Description='[1967 Ferrari 275 GTB/4]
EXACT reproduction of @img1
Studio cyclorama. Abstract; vehicle only ~25% visible, pushed mostly out of frame; fragmented read of hood edge + one headlamp arc.' -DateTimeOriginal='2026-04-08T11:24:56+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_070.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_071.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883798973/render.png?token=exp=1782518400~hmac=eafac17471807a3a97a7771fa31fc6aba5acd8b0766d877904a977c77f94198c"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 071' -Description='[1967 Ferrari 275 GTB/4]
EXACT reproduction of @img1
Studio cyclorama. Detail macro of rear bumper curvature and twin exhausts; vehicle occupies ~80% frame.' -DateTimeOriginal='2026-04-08T11:24:53+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_071.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_072.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883801858/render.png?token=exp=1782518400~hmac=1aae87374b9dd5775f3300e39ffeaa95576e959c6123ffe4ad1246c4a715da68"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 072' -Description='[1967 Ferrari 275 GTB/4]
EXACT reproduction of @img1
Studio cyclorama. Structure top-down diagonal, car only ~55% frame, cropped at front bumper.' -DateTimeOriginal='2026-04-08T11:24:47+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_072.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_073.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883824415/render.png?token=exp=1782518400~hmac=e98d693d168cf6fa9aa1c4802106dde58637a3234cc9982a7fad759430646e2d"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 073' -Description='[1967 Ferrari 275 GTB/4]
EXACT reproduction of @img1
Studio cyclorama. Structure aggressive low angle, front-left corner dominates (~85% frame).' -DateTimeOriginal='2026-04-08T11:24:45+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_073.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_074.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883796926/render.png?token=exp=1782518400~hmac=ca9b2ef46cc56b1069d61c9e703fc4de7bea63155aab627864bb5ea177a393e7"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 074' -Description='[1967 Ferrari 275 GTB/4]
EXACT reproduction of @img1
Studio cyclorama. Hero front-left three-quarter, vehicle ~70% frame.' -DateTimeOriginal='2026-04-08T11:24:42+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_074.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_075.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883608328/render.png?token=exp=1782518400~hmac=d3524c2806ca17278bd2b5193b99694d87d2937c3014e1d9c8eff18dd7257b83"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 075' -Description='[1967 Ferrari 275 GTB/4 — confirmed via web search]

Late-afternoon overcast over windswept industrial port road; rear three-quarter strike, champagne-gold metallic body, elevated 400cm vantage with long-lens compression.' -DateTimeOriginal='2026-04-08T11:10:27+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_075.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_076.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883607737/render.png?token=exp=1782518400~hmac=7a6fa437c8b2810af3c22cba5b0307a90f147404dd40888a04d6e245349d04ea"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 076' -Description='[1967 Ferrari 275 GTB/4 — confirmed via web search]

Late-afternoon overcast over windswept industrial port road; rear three-quarter strike (16:9 aspect ratio).' -DateTimeOriginal='2026-04-08T11:10:22+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_076.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_077.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883601210/render.png?token=exp=1782518400~hmac=d75720748b7fb7c9810fd9464f1191ff99e059a32cdc239abe5667369ee750e4"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 077' -Description='[1967 Ferrari 275 GTB/4 — confirmed via web search]

Night rain just ended, street-level vapor rising from black pavement, sodium and cool LED tones; tight crop of front corner visible with champagne-gold metallic paint beading with water.' -DateTimeOriginal='2026-04-08T11:09:56+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_077.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_078.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883600746/render.png?token=exp=1782518400~hmac=ab63bcafe0d567a9f28313ed41ed323356f35d23557c7bf62842acedfa780c41"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 078' -Description='[1967 Ferrari 275 GTB/4 — confirmed via web search]

Night rain just ended, street-level vapor, tight crop of front corner (4:5 aspect ratio).' -DateTimeOriginal='2026-04-08T11:09:50+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_078.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_079.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883596711/render.png?token=exp=1782518400~hmac=deabb8cdbf6b26ed9d7d91fa937fbcb41cf7dc5f546034dc12e34f3c9cc0bb76"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 079' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

Vast roadside context with empty horizon and battered café small in frame; Ferrari tiny against the arid sweep but crisply readable (4:5 aspect ratio).' -DateTimeOriginal='2026-04-08T11:09:19+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_079.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_080.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883596178/render.png?token=exp=1782518400~hmac=6a5bd544d2a04d622c6db600d18714ec5fd4aac29f280eb2d28567fe95e71d93"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 080' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

Vast roadside context with empty horizon and battered café (4:5 aspect ratio, different seed).' -DateTimeOriginal='2026-04-08T11:09:13+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_080.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_081.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883537244/render.png?token=exp=1782518400~hmac=0b42d70e69a9e9da42edaffd277018cee9c53128870315ba61aa1e358e14b5c4"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 081' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

Low-angle three-quarter rear tracking composition suggesting motion along the deserted road beside the café; camera panning alongside at roughly wheel height ~40cm.' -DateTimeOriginal='2026-04-08T11:03:58+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_081.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_082.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883527768/render.png?token=exp=1782518400~hmac=3366e52fdaa1cfacbcdcaada5846b44292f28dea6e9d73f2d4ff7d9fc28745d0"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 082' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

Vast roadside context with empty horizon and battered café; camera elevated ~350cm with long telephoto compression.' -DateTimeOriginal='2026-04-08T11:03:57+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_082.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_083.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883530881/render.png?token=exp=1782518400~hmac=477f12db37df472cad410f7d685272be85a1c2e60fa6ffeea66c57f3295510a1"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 083' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

Midday arid landscape dominated by the ruined café; mid-distance full vehicle in environment, Ferrari in profile occupying roughly one third of the frame.' -DateTimeOriginal='2026-04-08T11:03:55+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_083.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_084.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883522874/render.png?token=exp=1782518400~hmac=1801f67c469535e280c0011b49efa92178565550186d3f7775eb4f56aaa76f0c"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 084' -Description='[1967 Ferrari 275 GTB/4 Series I — confirmed via web search]

Midday desert roadside scene with derelict café; extreme macro on the polished chrome prancing horse and surrounding trunk curvature.' -DateTimeOriginal='2026-04-08T11:03:51+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_084.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_085.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883522449/render.png?token=exp=1782518400~hmac=bcc2153f2be490c82c9b858918e81e0a6378223dcc873629ed6561c25e7c5b3e"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 085' -Description='[1967 Ferrari 275 GTB/4 — confirmed via web search]

High desert morning with thin pale haze; the Ferrari holds a pure side profile, full vehicle visible, champagne-gold metallic paint. Camera far distance with long telephoto compression.' -DateTimeOriginal='2026-04-08T11:03:41+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_085.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_086.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883519030/render.png?token=exp=1782518400~hmac=66ed6bd80dd9436eabbb7b63669cefbf3fd1dd2873f2b7f5f52a072aa6798cbb"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 086' -Description='[1967 Ferrari 275 GTB/4 — confirmed via web search]

Night rain just ended, street-level vapor, tight crop of front corner. Camera low 70cm with dutch angle.' -DateTimeOriginal='2026-04-08T11:03:38+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_086.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_087.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883523226/render.png?token=exp=1782518400~hmac=327c1c21991160e0faca8957c4cf71376e9e897bf3214699621320b63e361097"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 087' -Description='Realistic_Automotive_Blueprint_v1 — 1967 Ferrari 275 GTB/4 (Series I) — Orthographic multi-view reference sheet (front, rear, left side, right side, top) on white background, 9:16 canvas.' -DateTimeOriginal='2026-04-08T11:03:37+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_087.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_088.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883518869/render.png?token=exp=1782518400~hmac=e1d21a8c60a20792c383fa46266b50863f80be4e0085e4da11d685476a98a143"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 088' -Description='[1967 Ferrari 275 GTB/4 — confirmed via web search]

Late-afternoon overcast over windswept industrial port road; rear three-quarter strike.' -DateTimeOriginal='2026-04-08T11:03:36+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_088.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_089.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883521342/render.png?token=exp=1782518400~hmac=cac1a5ecc6f335602be282d57bddfdffafdf6578ea84df407ee0bef4a6e7f273"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 089' -Description='[1967 Ferrari 275 GTB/4 — confirmed via web search]

Pre-dawn coastal highway air hanging with salt haze, damp asphalt turning into a soft mirror. The Ferrari slices through the scene, camera at ground level 30cm panning alongside at speed.' -DateTimeOriginal='2026-04-08T11:03:31+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_089.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_090.jpg"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883487824/exteriorpng.jpg?token=exp=1782518400~hmac=5af67e62124e6be06776c726529b24d575345e92028d174ea212dbd0b16afedc"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 090' -Description='Photo: A gold 1967 Ferrari 275 GTB/4, viewed from multiple angles, showcasing its sleek design and classic automotive lines against a dark gray background' -DateTimeOriginal='2026-04-08T11:01:57+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_090.jpg"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_091.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883336196/upload.png?token=exp=1782518400~hmac=554cc71ef959f7c659c26eb9272b3ee7b95fa49228856411d023218da0fdf480"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 091' -Description='Realistic_Automotive_Blueprint_v1 — 1967 Ferrari 275 GTB/4 (Series I) — Orthographic multi-view reference sheet (front, rear, left side, right side, top) on white background, 9:16 canvas.' -DateTimeOriginal='2026-04-08T10:50:27+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_091.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_092.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883352265/render.png?token=exp=1782518400~hmac=f8397ce0f994b6ba878eda24f6339ffcf1a5f4187f14c50e73df2960846dafbe"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 092' -Description='Technical orthographic blueprint — 1967 Ferrari 275 GTB/4 (Series I) — Line drawing with warm gray shading, 4k resolution.' -DateTimeOriginal='2026-04-08T10:50:04+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_092.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_093.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883288282/render.png?token=exp=1782518400~hmac=7bf47614400d810193eb43939467643b8192fa0a07b25d566acd35f5d79f7c75"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 093' -Description='Technical orthographic blueprint — 1967 Ferrari 275 GTB/4 (Series I) — Line drawing with warm gray shading, 2k resolution.' -DateTimeOriginal='2026-04-08T10:40:47+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_093.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_094.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883196659/render.png?token=exp=1782518400~hmac=c6a8af5f6e2528199fbbe36645135ca94c4fe2b39f129e546d214d7975690ab9"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 094' -Description='Technical orthographic blueprint — 1967 Ferrari 275 GTB/4 (Series I) — Line drawing with warm gray shading, 2k resolution.' -DateTimeOriginal='2026-04-08T10:39:03+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_094.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_095.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883209405/render.png?token=exp=1782518400~hmac=029b54d98100c3185cb008284115f0242d390e3ffb8bfa237b62e222da23d11e"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 095' -Description='Technical orthographic blueprint — 1967 Ferrari 275 GTB/4 (Series I) — Line drawing with warm gray shading, 4k resolution.' -DateTimeOriginal='2026-04-08T10:38:52+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_095.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_096.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883204159/render.png?token=exp=1782518400~hmac=bb1f1eec98a9a94e026a1c1bc5bd470c8054efb9725d9256a417d8788678b3e3"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 096' -Description='Technical orthographic blueprint — 1967 Ferrari 275 GTB/4 (Series I) — Line drawing with warm gray shading, 2k resolution.' -DateTimeOriginal='2026-04-08T10:33:34+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_096.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_097.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883126329/render.png?token=exp=1782518400~hmac=2f461118754622f2b72d370398cfd95cf2786e9391085a754228f3cfb609fa86"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 097' -Description='Technical orthographic blueprint — 1967 Ferrari 275 GTB/4 (Series I) — Line drawing with warm gray shading, 4k resolution.' -DateTimeOriginal='2026-04-08T10:33:09+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_097.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_098.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3883100140/render.png?token=exp=1782518400~hmac=713a14ac9ec5a16376eb6808e50a037a8efa341f0a7005af7ecccf9557376deb"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 098' -Description='Realistic_Automotive_Blueprint_v1 — 1967 Ferrari 275 GTB/4 (Series I) — Orthographic multi-view reference sheet, 2k resolution.' -DateTimeOriginal='2026-04-08T10:31:15+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_098.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_099.jpg"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3882823313/ferrari-275gtb-024.jpg?token=exp=1782518400~hmac=1412ff76599844f36bc64ca88ba15261d6a6460f66830ec497bd4c657968f444"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 099' -Description='Photo: A tan 1967 Ferrari 275 GTB/4 coupe with a black interior, parked on a gray surface with a dark gray background' -DateTimeOriginal='2026-04-08T10:11:03+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_099.jpg"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_100.jpg"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3882823253/ferrari-275gtb-022.jpg?token=exp=1782518400~hmac=ea75dd575082bdf6525f35735b22b4db1595c4de0040031872e62ac0e53d3f7b"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 100' -Description='Photo: A gold 1967 Ferrari 275 GTB/4 coupe with a dark gray background' -DateTimeOriginal='2026-04-08T10:11:03+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_100.jpg"
fi
FPATH="$DIR/ferrari_275gtb4/20260408_1967-Ferrari-330GTC_Magnific_101.jpg"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3882822855/ferrari-275gtb-046.jpg?token=exp=1782518400~hmac=4146dad4e6c4a663d2f1c84baf4ff201a86c5d10cb43faccbaa237ba6d0578a0"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 101' -Description='Photo: A gold 1967 Ferrari 275 GTB/4 coupe with a gray background' -DateTimeOriginal='2026-04-08T10:11:01+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260408_1967-Ferrari-330GTC_Magnific_101.jpg"
fi
FPATH="$DIR/ferrari_275gtb4/20260310_1967-Ferrari-330GTC_Magnific_102.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3565137302/render.png?token=exp=1782518400~hmac=34ce53581c51af069039a936b8e850ee29ff01748aabb381211c88e91fc9636f"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 102' -Description='1963 Ferrari 250 GT Lusso, human preparation scene, mechanic in oil-stained overalls checking tire pressure, pit lane at Spa-Francorchamps 1967, Nikon F3, 50mm lens, Kodachrome 64. Vehicle condition: well-maintained but genuinely driven with subtle patina.' -DateTimeOriginal='2026-03-10T20:25:20+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260310_1967-Ferrari-330GTC_Magnific_102.png"
fi
FPATH="$DIR/ferrari_275gtb4/20260303_1967-Ferrari-330GTC_Magnific_103.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/3478491752/render.png?token=exp=1782518400~hmac=4ae51f7963227bba4ca9ab8b727cd09042eed5a37ed1e41fa37ea4a599c3553f"
  exiftool -overwrite_original -Title='1967 Ferrari 330GTC 103' -Description='Moody cliffside dusk scene featuring a 1967 Porsche 911 race-prepped coupe in racing cream/ivory with black period-correct decals. Rain-slick mountain road, heavy overcast, dramatic rim backlight. Kodak Portra 800 film simulation. Blueprint authority system for vehicle geometry fidelity.' -DateTimeOriginal='2026-03-03T07:00:37+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260303_1967-Ferrari-330GTC_Magnific_103.png"
fi

# === Spaces/1991 McLaren MP4/6 Honda ===
echo "--- Spaces/1991 McLaren MP4/6 Honda ---"
mkdir -p "$DIR/mclaren_mp46"
FPATH="$DIR/mclaren_mp46/20260604_1991-McLaren-MP4-6-Honda_Magnific_001.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4498608218/upload.png?token=exp=1782518400~hmac=06185700155a8a69def0396b540f76ae780e971382f75dce7f3d5176e9c70eb9"
  exiftool -overwrite_original -Title='1991 McLaren MP4/6 Honda 001' -Description='McLaren MP4/6 Honda, 1991 Formula 1, Marlboro livery, #1 — Mechanical Detail Relic / Endurance Relic — tight detail: front suspension and tire marbling, brake dust, chipped paint, safety wire. Nikon F3 + Kodak Tri-X 400 pushed +3, 105mm macro.' -DateTimeOriginal='2026-06-04T11:15:00+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260604_1991-McLaren-MP4-6-Honda_Magnific_001.png"
fi
FPATH="$DIR/mclaren_mp46/20260604_1991-McLaren-MP4-6-Honda_Magnific_002.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4498083414/upload.png?token=exp=1782518400~hmac=5232bc2dbaa6ff6c4fa223558a3b16137e04b0244c5251edefccc3281afa8d7a"
  exiftool -overwrite_original -Title='1991 McLaren MP4/6 Honda 002' -Description='McLaren MP4/6 Honda, 1991 Formula 1, Marlboro livery, #1 — Post-Stint Stillness / Endurance Relic — car parked in parc fermé gloom. Canon AE-1 + Ilford HP5 pushed +2, 35mm.' -DateTimeOriginal='2026-06-04T10:27:55+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260604_1991-McLaren-MP4-6-Honda_Magnific_002.png"
fi
FPATH="$DIR/mclaren_mp46/20260604_1991-McLaren-MP4-6-Honda_Magnific_003.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4493903173/render.png?token=exp=1782518400~hmac=f3bfe431d481bf7c5e3204065a4a6a05d612982728fb80ec0f645bb234ad436d"
  exiftool -overwrite_original -Title='1991 McLaren MP4/6 Honda 003' -Description='McLaren MP4/6 Honda, 1991 Formula 1, Marlboro livery, #1 — Mechanical Detail Relic / Endurance Relic — tight detail: front suspension and tire marbling. Nikon F3 + Kodak Tri-X 400 pushed +3, 105mm macro.' -DateTimeOriginal='2026-06-04T00:00:10+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260604_1991-McLaren-MP4-6-Honda_Magnific_003.png"
fi
FPATH="$DIR/mclaren_mp46/20260603_1991-McLaren-MP4-6-Honda_Magnific_004.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4493839969/render.png?token=exp=1782518400~hmac=f26ddc17974167ba1f9a61d0f53b822ee25082284a83c5d47232022fb0277ff8"
  exiftool -overwrite_original -Title='1991 McLaren MP4/6 Honda 004' -Description='McLaren MP4/6 Honda, 1991 Formula 1, Marlboro livery, #1 — Tele Compression Speed / Endurance Relic — long straight with fencing and trees, car at full song. Nikon F3 + Kodak Tri-X 400 pushed +3, 300mm.' -DateTimeOriginal='2026-06-03T23:59:49+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260603_1991-McLaren-MP4-6-Honda_Magnific_004.png"
fi
FPATH="$DIR/mclaren_mp46/20260603_1991-McLaren-MP4-6-Honda_Magnific_005.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4493795813/render.png?token=exp=1782518400~hmac=66d9c25e33605de62eca6e593ff4507935a1e0b0d57beb3d61871f5f2d848557"
  exiftool -overwrite_original -Title='1991 McLaren MP4/6 Honda 005' -Description='McLaren MP4/6 Honda, 1991 Formula 1, Marlboro livery, #1 — Ignition Moment / Endurance Relic — pitlane fire-up, exhaust heat shimmer. Canon AE-1 + Kodak Tri-X 400 pushed +3, 85mm.' -DateTimeOriginal='2026-06-03T23:59:27+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260603_1991-McLaren-MP4-6-Honda_Magnific_005.png"
fi
FPATH="$DIR/mclaren_mp46/20260603_1991-McLaren-MP4-6-Honda_Magnific_006.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4497678582/render.png?token=exp=1782518400~hmac=2f970b415ca59b2ac506c93b0a7fdd7d10a9516bd8ae024570ceb571e9884c20"
  exiftool -overwrite_original -Title='1991 McLaren MP4/6 Honda 006' -Description='McLaren MP4/6 Honda, 1991 Formula 1, Marlboro livery, #1 — Human Preparation / Endurance Relic — pit box pre-session, hands on wheel nuts. Nikon F3 + Ilford HP5 pushed +2, 50mm.' -DateTimeOriginal='2026-06-03T23:59:23+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260603_1991-McLaren-MP4-6-Honda_Magnific_006.png"
fi
FPATH="$DIR/mclaren_mp46/20260603_1991-McLaren-MP4-6-Honda_Magnific_007.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then SKIPPED=$((SKIPPED+1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4493758884/render.png?token=exp=1782518400~hmac=5b4982e4314bd1e69c6f4172ad1a7361c35df24eaface8463b28266db46284e1"
  exiftool -overwrite_original -Title='1991 McLaren MP4/6 Honda 007' -Description='McLaren MP4/6 Honda, 1991 Formula 1, Marlboro livery, #1 — Establishing Silence / Endurance Relic — empty pitlane dawn hush, wet asphalt sheen. Leica M6 + Kodak Tri-X 400 pushed +2, 35mm.' -DateTimeOriginal='2026-06-03T23:59:13+00:00' "$FPATH" 2>/dev/null
  DOWNLOADED=$((DOWNLOADED+1)); echo "OK: 20260603_1991-McLaren-MP4-6-Honda_Magnific_007.png"
fi


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


# === racing (5 Bilder) ===
mkdir -p "$DIR/Spaces/1970-Porsche-917K/racing"

FPATH="$DIR/Spaces/1970-Porsche-917K/racing/20260603_1970-Porsche-917K_Magnific_147.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4493706459/render.png?token=exp=1782518400~hmac=76067dce5312327533859b2351e93b1b087ae131ed291f89571e74f69df39d5c"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1970 Porsche 917K" \
      -Description="1970 Porsche 917K, Porsche Salzburg livery, #23 — Post-Stint Stillness / Endurance Relic" \
      -DateTimeOriginal="2026-06-03T23:10:13+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1970-Porsche-917K_Magnific_147.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1970-Porsche-917K_Magnific_147.png"
  fi
fi

FPATH="$DIR/Spaces/1970-Porsche-917K/racing/20260603_1970-Porsche-917K_Magnific_148.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4493687247/render.png?token=exp=1782518400~hmac=37384f243b9240365d5e95f2bc1057657714f8f3b50e31f97c3d7aaddfe407a7"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1970 Porsche 917K" \
      -Description="1970 Porsche 917K, Porsche Salzburg livery, #23 — Chaos / Endurance Relic" \
      -DateTimeOriginal="2026-06-03T23:09:56+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1970-Porsche-917K_Magnific_148.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1970-Porsche-917K_Magnific_148.png"
  fi
fi

FPATH="$DIR/Spaces/1970-Porsche-917K/racing/20260603_1970-Porsche-917K_Magnific_149.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4493665047/render.png?token=exp=1782518400~hmac=537d0ef7fa66a449b435cbabdeb7383c44f8db0ae97e0b7b27ff93c44426a710"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1970 Porsche 917K" \
      -Description="1970 Porsche 917K, Porsche Salzburg livery, #23 — Tele Compression Speed / Endurance Relic" \
      -DateTimeOriginal="2026-06-03T23:09:50+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1970-Porsche-917K_Magnific_149.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1970-Porsche-917K_Magnific_149.png"
  fi
fi

FPATH="$DIR/Spaces/1970-Porsche-917K/racing/20260603_1970-Porsche-917K_Magnific_150.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4493620164/render.png?token=exp=1782518400~hmac=c70bbbbfae27f818db52a1d48bf9cb2467b824abb7abca5a5862ff5c05e0ade5"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1970 Porsche 917K" \
      -Description="1970 Porsche 917K, Porsche Salzburg livery, #23 — Ignition Moment / Endurance Relic" \
      -DateTimeOriginal="2026-06-03T23:09:41+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1970-Porsche-917K_Magnific_150.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1970-Porsche-917K_Magnific_150.png"
  fi
fi

FPATH="$DIR/Spaces/1970-Porsche-917K/racing/20260603_1970-Porsche-917K_Magnific_151.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4493595970/render.png?token=exp=1782518400~hmac=9c5d11d2b7aeee5ea59ac28e17c8f1e60784c9871bf36e02c89e6a99dadc5dd5"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="1970 Porsche 917K" \
      -Description="1970 Porsche 917K, Porsche Salzburg livery, #23 — Human Preparation / Endurance Relic" \
      -DateTimeOriginal="2026-06-03T23:09:37+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260603_1970-Porsche-917K_Magnific_151.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260603_1970-Porsche-917K_Magnific_151.png"
  fi
fi

echo ""


mkdir -p "$DIR/Spaces/2026-Racing-Mixed"

FPATH="$DIR/Spaces/2026-Racing-Mixed/20260605_2026-Racing-Mixed_Magnific_152.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4511258519/render.png?token=exp=1782518400~hmac=a46319d5842ee4e9f99048f55773f1867ae2b4dd84fa657472c911c559122e33"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2026 Racing Mixed" \
      -Description="Create image-generator; Gritty black and white 35mm film photograph of a vintage 1990s Formula 1 car idling in a wet pit lane" \
      -DateTimeOriginal="2026-06-05T14:17:01+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260605_2026-Racing-Mixed_Magnific_152.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260605_2026-Racing-Mixed_Magnific_152.png"
  fi
fi

FPATH="$DIR/Spaces/2026-Racing-Mixed/20260605_2026-Racing-Mixed_Magnific_153.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4511255855/render.png?token=exp=1782518400~hmac=26bceaf44afd5f33df8a3cc67716249e4cb749c688bfbbac7c033b8a83adeef3"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2026 Racing Mixed" \
      -Description="Create image-generator; Gritty black and white 35mm film photograph of a vintage 1990s Formula 1 car idling in a wet pit lane" \
      -DateTimeOriginal="2026-06-05T14:17:01+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260605_2026-Racing-Mixed_Magnific_153.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260605_2026-Racing-Mixed_Magnific_153.png"
  fi
fi

FPATH="$DIR/Spaces/2026-Racing-Mixed/20260605_2026-Racing-Mixed_Magnific_154.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4511199885/render.png?token=exp=1782518400~hmac=52519c39cf1c423ccd63cccdc7881199375b7e327d56a7cc03d1b467e57ce370"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2026 Racing Mixed" \
      -Description="Create image-generator; Gritty black and white 35mm film photograph of a vintage 1990s Formula 1 car idling in a wet pit lane" \
      -DateTimeOriginal="2026-06-05T14:17:00+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260605_2026-Racing-Mixed_Magnific_154.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260605_2026-Racing-Mixed_Magnific_154.png"
  fi
fi

FPATH="$DIR/Spaces/2026-Racing-Mixed/20260605_2026-Racing-Mixed_Magnific_155.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4511146018/render.png?token=exp=1782518400~hmac=1d19d1ae4c7c7aed32d1d179d4e0ca1aa848d1754fc37e1d143fb3a9d10144be"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2026 Racing Mixed" \
      -Description="Create image-generator; Gritty black and white 35mm film photograph of a vintage 1990s Formula 1 car idling in a wet pit lane" \
      -DateTimeOriginal="2026-06-05T14:17:00+00:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260605_2026-Racing-Mixed_Magnific_155.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260605_2026-Racing-Mixed_Magnific_155.png"
  fi
fi

echo ""

echo ""
echo "=== Fertig ==="
echo "Heruntergeladen: $DOWNLOADED"
echo "Übersprungen: $SKIPPED"
