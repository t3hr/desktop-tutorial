#!/bin/bash
# Download: Spaces/fotografie/2006 YAK Nomads â 59 Bilder
# Generiert: 2026-06-24 (mit Original-Prompts)

BASE="$HOME/Downloads/magnific/Spaces/2006-YAK-Nomads"
DOWNLOADED=0
SKIPPED=0
FAILED=0

mkdir -p "$BASE"

# === 157: NZj8uV16D9 ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_157.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4625179937/render.png?token=exp=1782518400~hmac=4bd4b1bf921841f46f8df106a2692bcf79ed47b505e374cfbc5361ba67ba7dfd"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 8. Sweeping wide-angle ground-level view from among the cattle legs and hooves, giant curved horns rising like architecture above the camp, Dinka herders moving through fog-like smoke in the middle distance, sun breaking through suspended dust, the scene unfolding with overwhelming grandeur and raw ethnographic power, dramatic monochrome contrast, Sebastião Salgado style, 2006 historical environment, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #157" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 13:19:30" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_157.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_157.png"
  fi
fi

# === 158: 9RxojTaNYZ ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_158.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4625196698/render.png?token=exp=1782518400~hmac=06e47b0d3e7c3ac29e3dfe2fba339e6e6b5f96f5d9e8f02e2f50dab4c6474bce"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 1. Monumental black-and-white documentary photograph in the spirit of Sebastiao Salgado, extreme wide-angle view from a low ridge over the Tibetan high plateau at dawn, a yak caravan stretched diagonally across a frozen plain, tiny nomads and massive long-haired yaks reduced to dark moving calligraphy beneath immense snow mountains, cold mist, dung-fire smoke, and high-altitude haze layering the distance, hard backlight from the low Himalayan sun cutting shafts through vapor, deep blacks and radiant whites, sculptural silhouettes, austere 2006 Tibetan nomad clothing and yak-wool loads, timeless archaic dignity, 3:2, analog medium-format tonality, fine to medium grain, immense spatial depth, no frame, no borders, no photographic borders, no white margins, clean edges, 2. Intimate medium-close documentary portrait in the spirit of Sebastiao Salgado, a weathered Tibetan yak herder standing shoulder to shoulder with a gigantic yak...(truncated multi-scene prompt)
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #158" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 13:20:53" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_158.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_158.png"
  fi
fi

# === 159: fFMPEkjCDY ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_159.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4625531851/render.png?token=exp=1782518400~hmac=be4c1a08717b24f98e20efc7f0e56fb5fa31eaa0e6acd2e37c47e4ff5d5c53d6"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 1. Monumental black-and-white documentary photograph of a vast yak caravan crossing the Tibetan high plateau at dawn, tiny nomads and massive shaggy yaks drifting through cold ground mist beneath immense Himalayan ranges, distant snow peaks glowing through thin high-altitude haze, low camera position emphasizing the endless plain and towering sky, dramatic backlight carving the herd into sculptural silhouettes, rich silver-gray tonal scale, deep blacks, luminous whites, mystical cold atmosphere, timeless 2006 Tibetan nomad clothing and gear, medium-format analog character, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #159" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 13:35:03" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_159.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_159.png"
  fi
fi

# === 160: Pi1o9nk42C ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_160.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4625531853/render.png?token=exp=1782518400~hmac=ab6d6b55bcf7e5d0e8cd6bbcee6ee1d2b4a81c5c0db9e5d3f2a45f09afbcdb06"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 2. Monumental black-and-white portrait of a weathered Tibetan yak nomad standing shoulder to shoulder with an enormous yak, both seen from a low angle with vast cloud sea and far glaciated ridges opening behind them, visible breath in the freezing morning air, fur coat and wool layers from 2006, direct unwavering gaze, hard Himalayan side light and drifting smoke from dung fires modeling the face with severe chiaroscuro, thick matted yak hair rendered with tactile detail, austere dignity, high contrast, fine film grain, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #160" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 13:35:03" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_160.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_160.png"
  fi
fi

# === 161: 5xI2kJeKxe ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_161.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4625531855/render.png?token=exp=1782518400~hmac=c0dc91a06af84e2f3c7fe38e4b02e55f8f8de84d8f8f8eb6f4e2c1a3b5d7f9e1"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 3. Monumental black-and-white documentary scene of a nomad camp on the Ladakh highland, black yak-wool tents scattered across a barren plateau above 4000 meters, smoke rising vertically into thin cold air, herd dispersed in layers through pale dawn haze, tiny human figures moving between animals, shot in an extreme wide view from elevated ground so the camp feels fragile against colossal mountain walls and remote snow summits, crystalline tonal separation, deep atmospheric depth, severe yet lyrical, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #161" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 13:35:03" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_161.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_161.png"
  fi
fi

# === 162: CHD4ulqEEy ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_162.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4625531861/render.png?token=exp=1782518400~hmac=d1ed02b17bg95f3g4d8gf49f5c13f66g9g9ef95e9g9g9fc7g5f3d2b4c6e8g0f2"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 4. Monumental black-and-white intimate close shot of a Tibetan herder pressing his forehead against the head of a yak, one hand buried in dense winter fur, photographed from slightly below so the line of the animal's horn leads the eye toward distant ice-bright peaks and an ocean of mist behind them, cold backlight catching hair, breath, and drifting smoke, silent bond between human and beast, sculptural contrast, restrained documentary realism with mystical gravity, 2006 highland clothing, medium-format film look, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #162" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 13:35:03" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_162.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_162.png"
  fi
fi

# === 163: 8vnStr8IrU ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_163.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4625532023/render.png?token=exp=1782518400~hmac=e2fe13c28ch06g4h5e9hg50g6d24g77h0h0fg06f0h0h0gd8h6g4e3c5d7f9h1g3"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 5. Monumental black-and-white action photograph of young yak herders driving a compact herd through swirling snow and dust across a wind-scoured Himalayan plateau, low viewpoint near the ground making hooves, fur, and flung particles explode toward the camera while enormous ridgelines and a remote glacier loom behind, bodies leaning into effort, prayer-flag scraps and wool garments whipping in the gale, dramatic shafts of backlight through airborne haze, raw motion, endurance, and scale, high contrast tonal drama, fine-to-medium grain, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #163" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 13:35:06" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_163.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_163.png"
  fi
fi

# === 164: nTOFWfsYQD ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_164.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4625532025/render.png?token=exp=1782518400~hmac=f3gf24d39di17h5i6f0ih61h7e35h88i1i1gh17g1i1i1he9i7h5f4d6e8g0i2h4"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 6. Monumental black-and-white near-abstract detail of a giant yak's horn, eye, and tangled shaggy coat filling the frame, photographed from a low oblique angle so beyond the animal's mass the horizon opens to stark alpine emptiness and pale far peaks, frost clinging to hair, cold morning light etching every strand with silver highlights against abyssal blacks, primal texture, ancient power, documentary precision with epic atmosphere, 2006 Tibetan highland context, analog medium-format sharpness, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #164" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 13:35:06" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_164.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_164.png"
  fi
fi

# === 165: gJQViuXSXO ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_165.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4625532029/render.png?token=exp=1782518400~hmac=g4hg35e40ej28i6j7g1ji72i8f46i99j2j2hi28h2j2j2if0j8i6g5e7f9h1j3i5"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 7. Monumental black-and-white aerial-style wide photograph of nomads and yaks threading along a high ridge above a sea of fog, their dark procession reduced to elemental marks against snow patches, rock, and light, immense mountain chains receding in layered tonal bands to the horizon, severe cold clarity replacing any savanna warmth, stark geometry, spiritual isolation, timeless 2006 pastoral life, dramatic sunlight breaking through mountain haze, heroic documentary grandeur, rich tonal range, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #165" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 13:35:07" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_165.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_165.png"
  fi
fi

# === 166: KjtAZ0hkqp ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_166.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4625532031/render.png?token=exp=1782518400~hmac=h5ih46f51fk39j7k8h2kj83j9g57j00k3k3ij39i3k3k3jg1k9j7h6f8g0i2k4j6"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 8. Monumental black-and-white medium shot of an older Tibetan nomad turning in three-quarter profile while gripping a rope beside two heavily laden yaks, photographed from a deep low angle so his fur-lined silhouette rises against a vast glacier basin, distant serrated summits, and streaming mist, face marked by altitude, cold, and labor, side-lit by harsh early sun with smoke and breath catching the light, compressed herd forms behind him adding density and rhythm, austere nobility, strong chiaroscuro, fine film grain, Salgado-like documentary gravitas, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #166" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 13:35:07" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_166.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_166.png"
  fi
fi

# === 167: TeNksXXVNR ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_167.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4625860215/render.png?token=exp=1782518400~hmac=i6ji57g62gl40k8l9i3lk94k0h68k11l4l4jk40j4l4l4kh2l0k8i7g9h1j3l5k7"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
1. Monumental black-and-white documentary photograph in the unmistakable style of Sebastião Salgado, extreme wide-angle view from a low ridge above a Tibetan yak-nomad camp on the Himalayan plateau, 2006 historical details only, black yak-wool tents scattered across a vast wind-carved plain, tiny human figures tending yaks beside rising smoke, colossal snow mountains and layered storm clouds swallowing the horizon, severe high-altitude atmosphere, cold crystalline air, deep tonal scale from velvety blacks to luminous whites, sculptural light, epic human dignity, dramatic sky, strong foreground rocks leading into immense distance, heroic yet truthful composition, medium-format film character, fine grain, razor detail, no frame, no borders, no photographic borders, no white margins, clean edges, 2. Sebastião Salgado style, monumental black-and-white aerial perspective over the Tibetan highlands, a lone black nomad tent near a frozen stream, minute family silhouettes and a yak caravan crossing glacial textures below, gigantic mountain walls, drifting mist and cloud shadows creating vast tonal architecture, 2006 clothing and camp objects rendered with ethnographic accuracy, powerful documentary realism, high contrast, luminous snowfields against dark volcanic earth, sweeping compositional depth, sublime scale, austere spiritual grandeur, fine-to-medium analog grain, no frame, no borders, no photographic borders, no white margins, clean edges, 3. Heroic extreme wide shot in Sebastião Salgado's documentary language, low camera near the ground outside a yak-wool tent at dawn, smoke pouring from the roof opening into a sea of mist, one small figure at the entrance wrapped in heavy wool garments of 2006, endless plateau opening behind into glacier tongues and distant serrated peaks, severe monochrome chiaroscuro, dramatic cloud masses, the human presence almost biblical against overwhelming landscape, rich grayscale, tactile earth and frost textures, grand cinematic stillness, no frame, no borders, no photographic borders, no white margins, clean edges, 4. Monumental wide-angle black-and-white photograph in the style of Sebastião Salgado, interior-to-exterior threshold view from deep inside the dark yak-wool tent, a child standing half in shadow half in blinding mountain light, the low camera looking past the figure toward immense plains, luminous snow peaks and a vast cloud ocean beyond, smoke and dust rays cutting through the doorway, 2006 nomadic clothing and domestic tools, austere documentary realism, spiritual contrast between shelter and infinity, deep blacks, radiant whites, sculptural composition, fine film grain, no frame, no borders, no photographic borders, no white margins, clean edges, 5. Intimate medium close shot in Sebastião Salgado's monumental black-and-white style, an elderly grandmother holding a small child beside the central dung stove inside the yak-nomad tent, low camera angle so their figures rise against an opening above that reveals a bright sliver of sky and distant mountain forms, smoke diffusing a single shaft of light across weathered faces, 2006 wool garments, layered yak furs and rough domestic textures, deep human dignity, rich chiaroscuro, tender but severe atmosphere, medium-format documentary sharpness, no frame, no borders, no photographic borders, no white margins, clean edges, 6. Powerful medium shot in the style of Sebastião Salgado, a mother bent over the fire as sparks and smoke climb into the roof light, low perspective from near the ground allowing the frame to open behind her through the tent entrance toward a sweeping glacier basin and remote snowy summits, 2006 historical clothing and camp utensils only, muscular black-and-white tonal drama, glowing ember light against cold alpine daylight, tactile hands, smoke-veiled depth, sacred domestic labor, epic background scale still clearly felt, fine analog grain, no frame, no borders, no photographic borders, no white margins, clean edges, 7. Sebastião Salgado black-and-white documentary close-up, an older patriarch seated in dignified half-darkness holding a steaming bowl of butter tea, side light carving every line of his face, low camera angle looking slightly upward past his shoulder toward the tent opening where far peaks and a bright glacial sky remain visible, 2006 nomad attire, severe tonal richness, velvety shadows, luminous steam, moral gravity and resilience, intimate portrait fused with mountain immensity, medium-format realism, no frame, no borders, no photographic borders, no white margins, clean edges, 8. Monumental medium shot in Sebastião Salgado's signature style, children playing on stacked yak furs inside the smoky tent, captured from a low angle so their movement rises beneath a diagonal shaft of roof light while the far edge of the frame opens to a blazing exterior with cloud seas and distant Himalayan ridges, 2006 wool blankets, handmade household objects, deep contrast, smoke-softened highlights, joyful energy inside an austere world, human warmth against overwhelming altitude, sculptural composition, fine-to-medium film grain, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #167" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 14:14:43" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_167.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_167.png"
  fi
fi

# === 168: l7uVQhsgv9 ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_168.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626142148/render.png?token=exp=1782518400~hmac=j7kj68h73hm51l9m0j4ml05l1i79l22m5m5kl51k5m5m5li3m1l9j8h0i2k4m6l8"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 1. Monumental black-and-white documentary photograph in the unmistakable style of Sebastiao Salgado, extreme wide-angle view of a lone black yak-wool nomad tent on the Tibetan plateau at dawn, tiny human silhouettes beside the banag, vast Himalayan ridgelines and distant snow summits dominating the frame, smoke rising vertically into thin freezing air, low camera angle from rough grass and frost foreground, epic spatial depth, rich tonal range from velvet blacks to luminous whites, sculptural clouds, austere dignity, timeless 2006 Tibetan nomad clothing and domestic traces only, analog medium-format character, fine film grain, heroic yet intimate grandeur, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #168" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 14:51:49" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_168.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_168.png"
  fi
fi

# === 169: fFM4D0uCDY ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_169.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626142150/render.png?token=exp=1782518400~hmac=k8lk79i84in62m0n1k5nm16m2j80m33n6n6lm62l6n6n6mj4n2m0k9i1j3l5n7m9"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 2. Monumental black-and-white documentary image in the style of Sebastiao Salgado, interior of a low Tibetan yak-wool tent with the whole nomad family gathered around the central dung stove, a dramatic shaft of light from the roof opening cutting through dense smoke, grandparents parents and children arranged in a powerful circular composition, deep chiaroscuro, glowing embers as secondary illumination, faces emerging from darkness with biblical gravity, low vantage point near the floor revealing layered blankets furs and utensils, the open flap hinting at far glaciers and bright highland sky beyond, 2006 historical authenticity in clothing and household details, high detail sharpness, medium wide lens feeling, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #169" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 14:51:49" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_169.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_169.png"
  fi
fi

# === 170: ube6deSQLD ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_170.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626142152/render.png?token=exp=1782518400~hmac=l9ml80j95jo73n1o2l6on27n3k91n44o7o7mn73m7o7o7nk5o3n1l0j2k4m6o8n0"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 3. Monumental black-and-white documentary photograph in the style of Sebastiao Salgado, aerial-like high overlook across a barren Himalayan nomad camp, black tents scattered like dark marks across a windswept plateau, winding yak tracks and tiny figures dwarfed by colossal mountain walls, morning haze and long shadows creating dramatic tonal separation, severe sky and radiant snowfields, composition built on vast negative space and miniature human persistence, timeless yet specifically grounded in 2006 material culture, analog richness, powerful contrast, epic silence and endurance, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #170" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 14:51:49" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_170.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_170.png"
  fi
fi

# === 171: 43rIxxU9Aa ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_171.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626142154/render.png?token=exp=1782518400~hmac=m0nm91k06kp84o2p3m7po38o4l02o55p8p8no84n8p8p8ol6p4o2m1k3l5n7p9o1"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 4. Monumental black-and-white close medium portrait in the style of Sebastiao Salgado, an elderly weathered grandmother inside the smoky yak-wool tent holding a small child, both caught inside a soft descending light beam while the background falls into deep black, low camera position so the threshold behind them opens toward an immense cloud sea and distant Himalayan peaks, tenderness fused with endurance, skin texture smoke vapor woven textiles and fur rendered with extraordinary tactile detail, reverent documentary realism, 2006 nomad garments and hair styling only, fine to medium film grain, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #171" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 14:51:49" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_171.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_171.png"
  fi
fi

# === 172: 62LhsSViJO ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_172.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626142201/render.png?token=exp=1782518400~hmac=n1on02l17lq95p3q4n8qp49p5m13p66q9q9op95o9q9q9pm7q5p3n2l4m6o8q0p2"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 5. Monumental black-and-white documentary image in the style of Sebastiao Salgado, medium shot of a mother bent over the dung stove feeding the fire, sparks and smoke spiraling upward into the roof light shaft, her face lit from below by embers and from above by cold highland light, low perspective past her shoulder toward the tent entrance where endless glacier slopes and remote summits blaze in the distance, raw labor and maternal focus, dense chiaroscuro, strong sculptural modeling, authentic 2006 Tibetan nomad tools fabrics and domestic setting, high resolution analog medium-format feel, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #172" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 14:51:52" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_172.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_172.png"
  fi
fi

# === 173: gJQMFkHSXO ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_173.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626142203/render.png?token=exp=1782518400~hmac=o2po13m28mr06q4r5o9rq50q6n24q77r0r0pq06p0r0r0qn8r6q4o3m5n7p9r1q3"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 6. Monumental black-and-white documentary photograph in the style of Sebastiao Salgado, extreme wide-angle exterior scene of children and yaks moving through morning mist around a black nomad tent, the camp reduced to fragile marks beneath immense mountain amphitheaters and streaming cloud bands, low heroic viewpoint from stony ground with frost crystals in foreground, dramatic atmosphere of wind smoke and altitude, tiny figures carrying epic emotional weight, luminous whites on glaciers against abyssal blacks of wool tent and rock, grounded in 2006 historical textures only, austere poetic realism, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #173" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 14:51:52" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_173.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_173.png"
  fi
fi

# === 174: LUC01fVswO ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_174.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626142205/render.png?token=exp=1782518400~hmac=p3qp24n39ns17r5s6p0sr61r7o35r88s1s1qr17q1s1s1ro9s7r5p4n6o8q0s2r4"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 7. Monumental black-and-white documentary close-up in the style of Sebastiao Salgado, a dignified patriarch seated in half-darkness holding a steaming bowl of butter tea, strong side light carving his lined profile while smoke veils recede behind him, low angle lets the eye pass beyond his shoulder to the bright tent flap and an overwhelming panorama of distant snow ridges and sky, portrait of endurance authority and stillness, extraordinary tonal depth and facial texture, sparse household objects fading into shadow, 2006 clothing and material culture only, telephoto intimacy with expansive background readability, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #174" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 14:51:53" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_174.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_174.png"
  fi
fi

# === 175: Kjtzs25kqp ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_175.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626142207/render.png?token=exp=1782518400~hmac=q4rq35o40ot28s6t7q1ts72s8p46s99t2t2rs28r2t2t2sp0t8s6q5o7p9r1t3s5"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 8. Monumental black-and-white documentary photograph in the style of Sebastiao Salgado, intimate low-angle scene at the tent threshold with a child standing half inside half outside, one side swallowed by smoky darkness and textile layers, the other side blasted by hard alpine light opening onto boundless plateau glaciers and far peaks, visual drama built on extreme contrast between interior shelter and exterior immensity, symbolic transition between family warmth and elemental world, rich blacks radiant whites visible breath and smoke, authentic 2006 nomad clothing and tent construction, poetic yet severe composition, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #175" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 14:51:54" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_175.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_175.png"
  fi
fi

# === 176: DB3LoP0pcl ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_176.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626397825/render.png?token=exp=1782518400~hmac=r5sr46p51pu39t7u8r2ut83t9q57t00u3u3st39s3u3u3tq1u9t7r6p8q0s2u4t6"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 1. Monumental black-and-white documentary photograph in the unmistakable style of Sebastiao Salgado, extreme wide-angle view of a lone black yak-wool nomad tent on the Tibetan plateau at dawn, tiny human silhouettes beside the banag, vast Himalayan ridgelines and distant snow summits dominating the frame, smoke rising vertically into thin freezing air, low camera angle from rough grass and frost foreground, epic spatial depth, rich tonal range from velvet blacks to luminous whites, sculptural clouds, austere dignity, timeless 2006 Tibetan nomad clothing and domestic traces only, analog medium-format character, fine film grain, heroic yet intimate grandeur, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #176" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 15:18:36" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_176.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_176.png"
  fi
fi

# === 177: IaYJfzQtvE ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_177.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626397827/render.png?token=exp=1782518400~hmac=s6ts57q62qv40u8v9s3vu94u0r68u11v4v4tu40t4v4v4ur2v0u8s7q9r1t3v5u7"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 2. Monumental black-and-white documentary image in the style of Sebastiao Salgado, interior of a low Tibetan yak-wool tent with the whole nomad family gathered around the central dung stove, a dramatic shaft of light from the roof opening cutting through dense smoke, grandparents parents and children arranged in a powerful circular composition, deep chiaroscuro, glowing embers as secondary illumination, faces emerging from darkness with biblical gravity, low vantage point near the floor revealing layered blankets furs and utensils, the open flap hinting at far glaciers and bright highland sky beyond, 2006 historical authenticity in clothing and household details, high detail sharpness, medium wide lens feeling, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #177" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 15:18:37" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_177.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_177.png"
  fi
fi

# === 178: SOFeyQjUb8 ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_178.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626397829/render.png?token=exp=1782518400~hmac=t7ut68r73rw51v9w0t4wv05v1s79v22w5w5uv51u5w5w5vs3w1v9t8r0s2u4w6v8"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 3. Monumental black-and-white documentary photograph in the style of Sebastiao Salgado, aerial-like high overlook across a barren Himalayan nomad camp, black tents scattered like dark marks across a windswept plateau, winding yak tracks and tiny figures dwarfed by colossal mountain walls, morning haze and long shadows creating dramatic tonal separation, severe sky and radiant snowfields, composition built on vast negative space and miniature human persistence, timeless yet specifically grounded in 2006 material culture, analog richness, powerful contrast, epic silence and endurance, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #178" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 15:18:38" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_178.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_178.png"
  fi
fi

# === 179: 3GlCzg5REY ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_179.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626397831/render.png?token=exp=1782518400~hmac=u8vu79s84sx62w0x1u5xw16w2t80w33x6x6vw62v6x6x6wt4x2w0u9s1t3v5x7w9"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 4. Monumental black-and-white close medium portrait in the style of Sebastiao Salgado, an elderly weathered grandmother inside the smoky yak-wool tent holding a small child, both caught inside a soft descending light beam while the background falls into deep black, low camera position so the threshold behind them opens toward an immense cloud sea and distant Himalayan peaks, tenderness fused with endurance, skin texture smoke vapor woven textiles and fur rendered with extraordinary tactile detail, reverent documentary realism, 2006 nomad garments and hair styling only, fine to medium film grain, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #179" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 15:18:39" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_179.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_179.png"
  fi
fi

# === 180: 1shWlfmr4r ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_180.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626397833/render.png?token=exp=1782518400~hmac=v9wv80t95ty73x1y2v6yx27x3u91x44y7y7wx73w7y7y7xu5y3x1v0t2u4w6y8x0"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 5. Monumental black-and-white documentary image in the style of Sebastiao Salgado, medium shot of a mother bent over the dung stove feeding the fire, sparks and smoke spiraling upward into the roof light shaft, her face lit from below by embers and from above by cold highland light, low perspective past her shoulder toward the tent entrance where endless glacier slopes and remote summits blaze in the distance, raw labor and maternal focus, dense chiaroscuro, strong sculptural modeling, authentic 2006 Tibetan nomad tools fabrics and domestic setting, high resolution analog medium-format feel, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #180" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 15:18:39" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_180.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_180.png"
  fi
fi

# === 181: aQV9FXzfSh ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_181.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626397835/render.png?token=exp=1782518400~hmac=w0xw91u06uz84y2z3w7zy38y4v02y55z8z8xy84x8z8z8yv6z4y2w1u3v5x7z9y1"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 6. Monumental black-and-white documentary photograph in the style of Sebastiao Salgado, extreme wide-angle exterior scene of children and yaks moving through morning mist around a black nomad tent, the camp reduced to fragile marks beneath immense mountain amphitheaters and streaming cloud bands, low heroic viewpoint from stony ground with frost crystals in foreground, dramatic atmosphere of wind smoke and altitude, tiny figures carrying epic emotional weight, luminous whites on glaciers against abyssal blacks of wool tent and rock, grounded in 2006 historical textures only, austere poetic realism, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #181" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 15:18:40" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_181.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_181.png"
  fi
fi

# === 182: jSfTNUVLD0 ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_182.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626397837/render.png?token=exp=1782518400~hmac=x1yx02v17va95z3a4x8az49z5w13z66a9a9yz95y9a9a9zw7a5z3x2v4w6y8a0z2"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 7. Monumental black-and-white documentary close-up in the style of Sebastiao Salgado, a dignified patriarch seated in half-darkness holding a steaming bowl of butter tea, strong side light carving his lined profile while smoke veils recede behind him, low angle lets the eye pass beyond his shoulder to the bright tent flap and an overwhelming panorama of distant snow ridges and sky, portrait of endurance authority and stillness, extraordinary tonal depth and facial texture, sparse household objects fading into shadow, 2006 clothing and material culture only, telephoto intimacy with expansive background readability, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #182" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 15:18:41" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_182.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_182.png"
  fi
fi

# === 183: TeNrFThVNR ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_183.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626397839/render.png?token=exp=1782518400~hmac=y2zy13w28wb06a4b5y9ba50a6x24a77b0b0za06z0b0b0ax8b6a4y3w5x7z9b1a3"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 8. Monumental black-and-white documentary photograph in the style of Sebastiao Salgado, intimate low-angle scene at the tent threshold with a child standing half inside half outside, one side swallowed by smoky darkness and textile layers, the other side blasted by hard alpine light opening onto boundless plateau glaciers and far peaks, visual drama built on extreme contrast between interior shelter and exterior immensity, symbolic transition between family warmth and elemental world, rich blacks radiant whites visible breath and smoke, authentic 2006 nomad clothing and tent construction, poetic yet severe composition, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #183" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 15:18:41" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_183.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_183.png"
  fi
fi

# === 184: SOFda7mUb8 ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_184.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4627157841/render.png?token=exp=1782518400~hmac=z3az24x39xc17b5c6z0cb61b7y35b88c1c1ab17a1c1c1by9c7b5z4x6y8a0c2b4"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 4. Monumental black-and-white close medium portrait in the style of Sebastiao Salgado, an elderly weathered grandmother inside the smoky yak-wool tent holding a small child, both caught inside a soft descending light beam while the background falls into deep black, low camera position so the threshold behind them opens toward an immense cloud sea and distant Himalayan peaks, tenderness fused with endurance, skin texture smoke vapor woven textiles and fur rendered with extraordinary tactile detail, reverent documentary realism, 2006 nomad garments and hair styling only, fine to medium film grain, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #184" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 16:47:50" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_184.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_184.png"
  fi
fi

# === 185: MXiLyARDCm ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_185.jpg"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4627157873/render.jpg?token=exp=1782518400~hmac=a4ba35y40yd28c6d7a1dc72c8z46c99d2d2bc28b2d2d2cz0d8c6a5y7z9b1d3c5"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 1. Monumental black-and-white documentary photograph of a vast yak caravan crossing the Tibetan high plateau at dawn, tiny nomads and massive shaggy yaks drifting through cold ground mist beneath immense Himalayan ranges, distant snow peaks glowing through thin high-altitude haze, low camera position emphasizing the endless plain and towering sky, dramatic backlight carving the herd into sculptural silhouettes, rich silver-gray tonal scale, deep blacks, luminous whites, mystical cold atmosphere, timeless 2006 Tibetan nomad clothing and gear, medium-format analog character, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #185" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 16:47:55" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_185.jpg"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_185.jpg"
  fi
fi

# === 186: 9Rxvby8NYZ ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_186.jpg"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4627157905/render.jpg?token=exp=1782518400~hmac=b5cb46z51ze39d7e8b2ed83d9a57d00e3e3cd39c3e3e3da1e9d7b6z8a0c2e4d6"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 1. Monumental black-and-white documentary photograph of a vast yak caravan crossing the Tibetan high plateau at dawn, tiny nomads and massive shaggy yaks drifting through cold ground mist beneath immense Himalayan ranges, distant snow peaks glowing through thin high-altitude haze, low camera position emphasizing the endless plain and towering sky, dramatic backlight carving the herd into sculptural silhouettes, rich silver-gray tonal scale, deep blacks, luminous whites, mystical cold atmosphere, timeless 2006 Tibetan nomad clothing and gear, medium-format analog character, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #186" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 16:48:03" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_186.jpg"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_186.jpg"
  fi
fi

# === 187: xgaTIkijfW ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_187.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4627666795/render.png?token=exp=1782518400~hmac=9bc9f701d2520040866682832875af97aeea0cf78b56e3c74798c49bdc987165"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 7. Monumental black-and-white aerial-style wide photograph of nomads and yaks threading along a high ridge above a sea of fog, their dark procession reduced to elemental marks against snow patches, rock, and light, immense mountain chains receding in layered tonal bands to the horizon, severe cold clarity replacing any savanna warmth, stark geometry, spiritual isolation, timeless 2006 pastoral life, dramatic sunlight breaking through mountain haze, heroic documentary grandeur, rich tonal range, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #187" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 17:21:28" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_187.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_187.png"
  fi
fi

# === 188: 74boFAnJAL ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_188.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4627444796/render.png?token=exp=1782518400~hmac=fa2fbd9dc01e87dbd9dd6927ec5c1ab39eab354043189e0489c991d39da268c0"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
1. Monumental black-and-white documentary portrait in the spirit of Sebastião Salgado, 2006 Tibetan high plateau, an elderly yak nomad man in a massive sheepskin chuba, face carved by altitude, wind, and cold, direct unwavering gaze into camera, shot from a slightly low angle so the figure rises against an immense hazy horizon and distant snow mountains, hard crystalline high-altitude light revealing every crack of skin, every fiber of wool, every strand of beard, deep velvety blacks and radiant whites, sculptural contrast, fine medium-format film grain, 4:5, 85mm compression, background dissolved into mist and vast empty plateau, mystical, biblical dignity, no frame, no borders, no photographic borders, no white margins, clean edges
2. Vast heroic environmental portrait, black-and-white in the style of Sebastião Salgado, a solitary young yak herder in full traditional dress crossing a barren Himalayan upland in 2006, heavy chuba thrown over one shoulder, tiny but powerful silhouette placed low in frame beneath towering cloudbanks, glacier light, endless ridgelines and a sea of mist opening behind him, photographed with an extreme wide lens from a low ground perspective to magnify the epic mountain scale while preserving documentary realism, fierce contrast, luminous sky, textured earth, wind-driven smoke and snow haze, timeless archaic atmosphere, fine analog grain, 4:5, no frame, no borders, no photographic borders, no white margins, clean edges
3. Intimate close portrait of a Tibetan nomad woman adorned with intricately braided hair woven with coral, turquoise, and silver, black-and-white Sebastião Salgado visual language, 2006 Ladakh highland, harsh side light chiseling the braids, cheekbones, and metallic ornaments into sculptural relief, direct calm eye contact, shallow depth of field, but behind her a low-angle opening reveals distant glaciers and a luminous fog-filled valley, every bead, every hair, every weathered line rendered with astonishing tonal richness, solemn, dignified, culturally majestic, medium telephoto 105mm, 4:5, no frame, no borders, no photographic borders, no white margins, clean edges
4. Monumental generational portrait in black and white, Sebastião Salgado style, grandmother, mother, and daughter standing shoulder to shoulder in traditional yak-nomad dress on the Tibetan plateau, 2006, same lineage embodied in three faces, silver and stone jewelry repeated across generations, photographed from a subtly low perspective so their bodies anchor the foreground while an immense windswept landscape and remote snowy peaks expand behind them, hard mountain light, deep contrast, strong sculptural modeling, the older faces full of time, the child solemn and watchful, fine film grain, 4:5, reverent and timeless, no frame, no borders, no photographic borders, no white margins, clean edges
5. Extreme detail study rendered as a monumental black-and-white documentary image in the style of Sebastião Salgado, heavy silver and coral necklaces layered over dense wool and sheepskin, the chest of a yak-nomad woman filling the frame, 2006 Himalayan highland, almost abstract but still human, every hammered metal surface, every polished stone, every thread and crease blazing under directional side light, rich tonal scale from luminous highlights to abyssal black folds, slight low-angle composition allowing a faint blurred suggestion of sky and mountain haze beyond the body, tactile, sacred, elemental, 4:5, no frame, no borders, no photographic borders, no white margins, clean edges
6. Epic black-and-white portrait inside a nomad tent, Sebastião Salgado atmosphere, a middle-aged woman with silver-stone forehead ornament seated in darkness as a single shaft of light cuts through smoke and lifts her face from black shadow, 2006 Tibetan plateau, direct still gaze, the jewelry gleaming like relics, skin, wool, and braided hair rendered with severe clarity, chiaroscuro of almost biblical gravity, and through the dim tent opening behind her a blown-out distant plateau and pale mountain light suggest immense altitude beyond the enclosure, medium close shot, 135mm, 4:5, no frame, no borders, no photographic borders, no white margins, clean edges
7. Heroic environmental close-medium portrait, black-and-white in the spirit of Sebastião Salgado, an older yak-nomad woman wrapped in thick layered chuba standing against violent wind on a high barren ridge, 2006, hair and fabric swept sideways, low camera angle making her appear monumental while opening the view past her into endless cloud seas, remote summit walls, and drifting fog, harsh back-side light tracing the outline of her profile and igniting silver ornaments, face deeply lined yet serene, immense negative space, austere grandeur, fine analog grain, 4:5, no frame, no borders, no photographic borders, no white margins, clean edges
8. Severe close study of labor and inheritance, black-and-white Sebastião Salgado documentary portraiture, a child in oversized inherited traditional clothing standing on the open plateau in 2006, serious prematurely adult expression, sleeves too long, jewelry and wool overwhelming the small body, photographed from a low angle so the child fills the foreground while vast empty land, distant yak trails, mist, and far snow peaks expand behind, crisp altitude light revealing textile weight and tender skin with equal precision, profound dignity, silence, future carried in costume, deep contrast, fine medium-format grain, 4:5, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #188" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 17:22:34" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_188.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_188.png"
  fi
fi

# === 189: 3GlEgqlREY ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_189.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4627476941/render.png?token=exp=1782518400~hmac=0121c89cc73ca58808f5a5ec41107de4d828ab277a7a440adbbe89593d80865f"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
1. Monumental black and white documentary photograph in the style of Sebastiao Salgado, inside a black yak-wool tent on the Tibetan plateau, a woman preparing butter tea beside a dung stove, a column of steam rising through a hard shaft of light from the roof opening, her face sculpted by ember glow and cold skylight, rough kettles, felt walls, smoke layering the space, deep velvety blacks and radiant whites, medium-wide low-angle view that still reveals through the tent opening a vast Himalayan cloud sea and distant ridgelines, dignified survival, timeless pastoral life, 2006 clothing and tools only, high tonal range, analog medium-format feel, fine to medium grain, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges,
2. Epic extreme wide-angle black and white scene in the style of Sebastiao Salgado, dawn on the high Himalayan plateau, a solitary woman gathering and stacking dried yak-dung fuel with a woven basket on her back, tiny human silhouette against immense open land, distant yaks, wind-scoured plain, glacial mountains and enormous luminous sky, low horizon, cold thin air visible as mist, dramatic clouds and long tonal gradients, heroic scale, severe contrast, textures of frost, earth, wool, and smoke, 2006 nomad clothing and simple traditional implements, cinematic grandeur yet documentary truth, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges,
3. Intimate black and white close documentary image in the style of Sebastiao Salgado, raw weathered hands kneading tsampa with butter and tea in a wooden bowl, steam glowing in hard backlight, flour dust and moisture catching the light, every crack of skin and grain of the meal sharply rendered, deep shadow swallowing the surrounding tent interior, but beyond the hands a slit of light opens to blurred vast snow slopes and high plateau brightness, sacred labor, tactile realism, high contrast, telephoto detail, 4:5, analog medium-format tonality, 2006 only for costume and utensils, no frame, no borders, no photographic borders, no white margins, clean edges,
4. Heroic aerial-like extreme wide black and white photograph in the style of Sebastiao Salgado, a yak-nomad encampment scattered across a barren Ladakhi highland basin, black tents like dark marks beneath colossal mountain walls, smoke threads rising into the freezing morning, tiny figures milking yaks and carrying pails, braided rivers, glacier tongues, immense atmospheric depth, biblical dignity and silence, dramatic separation of luminous snowfields and abyssal shadow, rich silver-gray sky, documentary realism with monumental composition, 2006 pastoral details only, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges,
5. Powerful medium shot in black and white, Sebastiao Salgado style, a woman milking a yak in freezing morning haze, her forehead resting against the animal’s flank, breath clouds mingling with the steam from fresh milk, low camera angle from near the pail, the yak towering nobly while behind them the plateau falls away into endless mist, distant peaks and a pale glacier horizon, high-altitude light carving fur, hands, and cheekbones, reverent and intimate, strong chiaroscuro, fine film grain, 3:2, 2006 traditional wool garments and wooden milking tools, no frame, no borders, no photographic borders, no white margins, clean edges,
6. Dense chiaroscuro black and white interior in the style of Sebastiao Salgado, family seated in a circle on the ground sharing a meal inside the yak-wool tent, bowls held in rough hands, steam rising from food and crossing the central light shaft, faces emerging from darkness with quiet dignity, an old woman passing a bowl to a child, stillness and communal warmth at the center of a harsh world, low eye-level perspective with the tent opening beyond them revealing bright distant mountains and an immense sky, deep tonal richness, sculptural smoke, medium-wide composition, 3:2, 2006 only in clothing and simple vessels, no frame, no borders, no photographic borders, no white margins, clean edges,
7. Monumental close-to-medium black and white documentary portrait in the style of Sebastiao Salgado, a woman rhythmically churning yak milk in a tall wooden butter barrel, arms tense, face concentrated, sleeves rolled, smoke and steam wrapping around her in luminous streaks, low vantage point so that the churn rises like a column and the open tent flap frames remote glaciers and vast clouds behind her, textures of rough wood, skin, wool, and condensed vapor rendered with exquisite detail, austere nobility, strong contrast, analog medium-format look, 3:2, 2006 historical details only, no frame, no borders, no photographic borders, no white margins, clean edges,
8. Stark extreme wide black and white landscape in the style of Sebastiao Salgado, outside the tent at dusk, a tiny nomad figure carrying a steaming kettle across a windswept ridge toward black yak-wool shelters, the plateau dropping into a colossal abyss of cloud and layered mountain silhouettes, smoke from the camp flattened by wind, glacial light breaking through storm bands, immense negative space and severe tonal drama, a vision of food, fire, and endurance within overwhelming high-altitude grandeur, documentary authenticity, 2006 traditional dress and camp objects only, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #189" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 17:26:08" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_189.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_189.png"
  fi
fi

# === 190: XtAUzN5Bfo ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_190.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4627716034/render.png?token=exp=1782518400~hmac=14f1e9dab71f76ce6b11e96db14dddcbb397bc480a2bac8ef956832a2513388a"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 7. Monumental black-and-white documentary close-up in the style of Sebastiao Salgado, a dignified patriarch seated in half-darkness holding a steaming bowl of butter tea, strong side light carving his lined profile while smoke veils recede behind him, low angle lets the eye pass beyond his shoulder to the bright tent flap and an overwhelming panorama of distant snow ridges and sky, portrait of endurance authority and stillness, extraordinary tonal depth and facial texture, sparse household objects fading into shadow, 2006 clothing and material culture only, telephoto intimacy with expansive background readability, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #190" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 17:27:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_190.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_190.png"
  fi
fi

# === 191: xgaVi3sjfW ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_191.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4627811380/render.png?token=exp=1782518400~hmac=afcd7b1fba546be83c9b789c4100a9315ba9528903a8003cf6697934974cf716"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 7. Monumental black-and-white documentary close-up in the style of Sebastiao Salgado, a dignified patriarch seated in half-darkness holding a steaming bowl of butter tea, strong side light carving his lined profile while smoke veils recede behind him, low angle lets the eye pass beyond his shoulder to the bright tent flap and an overwhelming panorama of distant snow ridges and sky, portrait of endurance authority and stillness, extraordinary tonal depth and facial texture, sparse household objects fading into shadow, 2006 clothing and material culture only, telephoto intimacy with expansive background readability, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #191" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 17:51:02" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_191.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_191.png"
  fi
fi

# === 192: jSfM3drLD0 ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_192.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4627861283/render.png?token=exp=1782518400~hmac=3617d618ecbd733892661fbeb19dc3ffce67bcabb2b61512e0d44f0577087e02"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 2. Monumental black-and-white documentary image in the style of Sebastiao Salgado, interior of a low Tibetan yak-wool tent with the whole nomad family gathered around the central dung stove, a dramatic shaft of light from the roof opening cutting through dense smoke, grandparents parents and children arranged in a powerful circular composition, deep chiaroscuro, glowing embers as secondary illumination, faces emerging from darkness with biblical gravity, low vantage point near the floor revealing layered blankets furs and utensils, the open flap hinting at far glaciers and bright highland sky beyond, 2006 historical authenticity in clothing and household details, high detail sharpness, medium wide lens feeling, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #192" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 17:51:17" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_192.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_192.png"
  fi
fi

# === 193: y6kmoI4PW9 ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_193.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4627914478/render.png?token=exp=1782518400~hmac=da007c5bd3673a6863d73fe700ca948ac474cbfed7c3cbfdc73cbeb5185e8f2f"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 8. Monumental black-and-white documentary photograph in the style of Sebastiao Salgado, intimate low-angle scene at the tent threshold with a child standing half inside half outside, one side swallowed by smoky darkness and textile layers, the other side blasted by hard alpine light opening onto boundless plateau glaciers and far peaks, visual drama built on extreme contrast between interior shelter and exterior immensity, symbolic transition between family warmth and elemental world, rich blacks radiant whites visible breath and smoke, authentic 2006 nomad clothing and tent construction, poetic yet severe composition, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #193" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 17:59:30" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_193.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_193.png"
  fi
fi

# === 194: 8vnOPoqIrU ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_194.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4627822043/render.png?token=exp=1782518400~hmac=47a79168bbd1f9f57237ab2bc7995c99879359c0ec4e97e1bb34ea66fb2e344d"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
1. An extreme wide documentary black-and-white photograph in the unmistakable style of Sebastiao Salgado, 2006 Tibetan high plateau, a tiny yak-wool tent and a lone woman gathering dried dung cakes for fuel beneath colossal Himalayan ridgelines, immense windswept emptiness, low horizon, vast sky and drifting ground haze, off-center composition with the figure pushed to the lower third, basket heavy on her back, yak herd scattered as dark punctuation across the plain, epic mountain grandeur dominating the frame, rich tonal scale, velvet blacks, radiant whites, sculptural light through thin high-altitude air, fine to medium film grain, monumental human dignity, dynamic diagonal landforms, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #194" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 18:04:52" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_194.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_194.png"
  fi
fi

# === 195: swEpXgKl8e ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_195.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4627822779/render.png?token=exp=1782518400~hmac=5f98cf1be7ebadbffbb42cdd3b46fc5ab434ce2c6d05ad7f13fec65deeaf3e62"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
3. An extreme wide heroic black-and-white landscape in the style of Sebastiao Salgado, dawn on the Himalayan uplands, a woman milking a yak in the morgue-like cold mist while the animal and figure remain small against endless glacial plains and serrated peaks, her forehead pressed to the yak’s flank, breath clouds and steam from the warm milk glowing in hard backlight, one horn cropped by the frame edge, immense negative space of fog and sky, dramatic tonal contrast, biblical dignity, low vantage point emphasizing the vastness of mountains and cloud seas, fine grain, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #195" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 18:04:55" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_195.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_195.png"
  fi
fi

# === 196: LUCDdS6swO ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_196.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4627822951/render.png?token=exp=1782518400~hmac=ac47fbb33afaffb06e2970e4326c17d4410fc6370f1a8f2c08699f4339d0f8a4"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
4. A medium-close documentary black-and-white image in the style of Sebastiao Salgado, raw weathered hands kneading tsampa with butter tea into dense dough, tactile flour, grease and cracked skin rendered with exceptional detail, telephoto intimacy yet from a low angle that reveals beyond the hands a blurred opening toward a luminous glacier valley and distant peaks, steam curling through side light, deep black background swallowing the tent interior, asymmetrical composition with the bowl pushed to one side, austere, reverent, high-contrast silver-rich tonality, 4:5, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #196" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 18:04:56" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_196.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_196.png"
  fi
fi

# === 197: l7ueBJ1gv9 ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_197.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4627822893/render.png?token=exp=1782518400~hmac=fe16a89614f531b1938216fdf387592761261660f898910f08183b9b79f5661c"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
5. An extreme wide aerial-feeling documentary black-and-white scene in the style of Sebastiao Salgado, family meal outside the yak-hair tent on a high ridge above a sea of clouds, the group tiny and circular around bowls while the plateau falls away into abyssal distance, smoke from the stove drifting sideways into vast Himalayan space, dramatic broken light over glaciers and distant summits, off-center placement, slanting horizon, monumental contrast between human intimacy and geologic scale, timeless 2006 clothing and utensils, fine to medium grain, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #197" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 18:04:59" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_197.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_197.png"
  fi
fi

# === 198: swEpXycl8e ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_198.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4627823119/render.png?token=exp=1782518400~hmac=92aab4ea727ec5c2c116b5659cb83f683f6fcd22187131d3581d6cc21147ebe6"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
6. A powerful medium shot in the style of Sebastiao Salgado, a woman churning yak milk in a tall wooden butter barrel inside the dark tent, rhythmic arms frozen mid-motion, concentration carved across her face, the barrel rising like a totem, beam of light from above catching vapor, dust and smoke, low camera perspective past the churn toward the tent slit opening onto remote snowy ranges so the immensity remains present, dynamic diagonal composition, partial crop of foreground utensils, muscular dignity, luminous blacks and whites, high detail, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #198" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 18:05:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_198.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_198.png"
  fi
fi

# === 199: poRgwagehw ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_199.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4627823845/render.png?token=exp=1782518400~hmac=0a3ea53260891d09eda0da48840792bcf2ff347605667c6edfa767059678b8b0"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
7. An intimate medium-close black-and-white documentary photograph in the style of Sebastiao Salgado, an elderly nomad woman handing a steaming bowl to a child, the gesture of care central yet placed off-center in soft side light, interior darkness surrounding them, a faint mountain horizon and pale highland sky visible beyond the tent entrance, steam glowing like incense, rough wool sleeves and lined faces rendered with tactile precision, cropped shoulder in foreground adding depth, solemn tenderness, deep chiaroscuro, rich tonal gradation, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #199" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 18:05:02" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_199.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_199.png"
  fi
fi

# === 200: gJQdoRVSXO ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_200.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4627823703/render.png?token=exp=1782518400~hmac=26850ba7a348cc7dfff5974e11433b91568aa3d5b6f824994a0778c7002cfb4c"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
8. A dramatic close still-life documentary black-and-white image in the style of Sebastiao Salgado, a dung stove with fierce embers and a steaming kettle, sparks rising into a shaft of light, hanging stores of dried cheese and meat disappearing into the half-dark above, one pair of hands entering from the edge holding a butter-tea bowl, low angle so the smoke column leads the eye upward toward the tent opening and a pale suggestion of the high mountain world outside, intense contrast, sculptural textures of fire, soot, hide and iron, mystical austerity, 4:5, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #200" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 18:05:04" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_200.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_200.png"
  fi
fi

# === 201: MXisUwODCm ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_201.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4627834943/render.png?token=exp=1782518400~hmac=8177caed6f96c609236fb141067cbb5091c775c7cf96735c9e442bc615312b5f"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
1. Monumental black-and-white documentary photograph in the style of Sebastião Salgado, pre-dawn on the Tibetan high plateau in 2006, an extreme wide-angle heroic view of a black yak-wool tent dwarfed by immense Himalayan ridges and a cold sea of mist, a lone woman and several yaks reduced to tiny silhouettes as morning milking begins outside, breath clouds and the steam of fresh milk glowing in fierce backlight, vast negative space of frost, wind, and altitude, off-center composition with the figures pushed low left and the mountain wall dominating the frame, deep tonal scale from velvet blacks to radiant whites, sculptural contrasts, fine analog medium-format grain, timeless dignity, epic wilderness and survival through food, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges, 2. Monumental black-and-white documentary photograph in the style of Sebastião Salgado, inside a dark yak-hair tent on the Himalayan plateau, a close low-angle view of a woman preparing butter tea over a dung stove, her face half lit by ember glow and half by a shaft of icy daylight from the roof opening, steam rising from a heavy kettle in luminous layered columns, one shoulder and part of the kettle deliberately cropped by the frame, behind her the opening reveals distant snow peaks and a blinding high-altitude sky, asymmetrical composition, dramatic chiaroscuro, rough skin, iron pot, felt walls, smoke and vapor rendered with rich tonal depth, 4:5, no frame, no borders, no photographic borders, no white margins, clean edges, 3. Monumental black-and-white documentary photograph in the style of Sebastião Salgado, high winds over Ladakh in 2006, an aerial-feeling extreme wide shot of a nomad woman carrying a basket of dried dung fuel across a broad stony plain, long diagonal tracks leading toward a remote encampment, gigantic glacier faces and serrated peaks filling the horizon, the figure placed far right as a small but resolute presence within overwhelming space, haze, dust, and thin alpine air creating luminous gradation, harsh sunlight breaking through drifting cloud, biblical dignity in labor, powerful documentary realism, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges, 4. Monumental black-and-white documentary photograph in the style of Sebastião Salgado, intimate medium close-up of the buttering process inside the tent, a woman working a tall wooden churn with rhythmic force, arms tense, sleeves rolled, concentration etched into her face, camera low so that the churn rises monumentally while the open tent flap behind her reveals a distant glacier and rolling cloudbanks, one yak horn entering cropped from the foreground edge, smoke and steam suspended in the slanted light beam, deep blacks, radiant highlights on wood, milk residue, and skin, asymmetrical framing with strong diagonals, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges, 5. Monumental black-and-white documentary photograph in the style of Sebastião Salgado, an extreme wide-angle panoramic scene of a family meal on the high plateau just outside the tent after snowfall, the group seated low in the foreground around bowls and simple food while beyond them opens an immense abyss of valley cloud, glacier tongues, and remote Himalayan summits, the family offset to one side and partially cropped by the lower frame edge, steam from bowls rising into frigid air, a reverent stillness, heroic yet intimate scale, broad luminous sky, rich tonal gradation, textural detail in wool garments and wind-cut earth, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges, 6. Monumental black-and-white documentary photograph in the style of Sebastião Salgado, tight detail shot of raw weathered hands kneading tsampa with butter tea into dense dough, the bowl held near the bottom edge and partly cut off, vapor glowing in sharp backlight, every crease, grain of flour, and sheen of fat rendered with tactile precision, camera positioned low enough that beyond the hands and through the tent opening an immense blurred field of high clouds and a distant ridge still announces the scale of the mountains, severe contrast, sacred simplicity of nourishment, 4:5, no frame, no borders, no photographic borders, no white margins, clean edges, 7. Monumental black-and-white documentary photograph in the style of Sebastião Salgado, a sweeping wide shot at dawn of yak milking beside a frozen stream, the woman leaning her forehead against the animal’s flank while warm milk steams into a metal pail, the yak’s body cropped massively across one side of the frame, beyond them endless steppe, mist, and a wall of mountains glowing under cold high-altitude light, dynamic off-center composition, long diagonals of slope and river ice, tiny distant herd silhouettes reinforcing the immensity of the landscape, profound dignity, high contrast, fine grain, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges, 8. Monumental black-and-white documentary photograph in the style of Sebastião Salgado, a medium shot inside the tent of an old woman passing a steaming bowl to a child, both seated near the dung stove, their faces modeled by soft side light and ember glow while sparks and smoke rise into the roof aperture, hanging strips of dried cheese and provisions descending in the upper shadows, composition shifted left with much dark negative space and a sliver of dazzling mountain sky visible through the entrance, cropped elbows and bowls heightening immediacy, solemn tenderness, survival, community, rich blacks and luminous whites, 4:5, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #201" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 18:06:13" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_201.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_201.png"
  fi
fi

# === 202: ubeZYEDQLD ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_202.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4628013870/render.png?token=exp=1782518400~hmac=6d4fa2bd5b3f2708cc9eec4c64711df94bdeb547c41b0e1f0d84ad569feaf615"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 1. Monumental documentary black-and-white photograph in the spirit of Sebastiao Salgado, extreme wide-angle view across the Tibetan high plateau at dawn, a tiny off-center woman milking a yak beside a black yak-wool tent, immense Himalayan ridgelines and wind-scoured plains dominating the frame, cold backlight turning breath and warm milk steam into luminous vapor, cropped yak horn entering from the edge, diagonal ground lines pulling into vast negative space of mist and sky, deep velvet blacks and radiant whites, sculptural tonal range, mystical high-altitude austerity, timeless nomadic survival, 2006 clothing and tools only, high detail, analog medium-format feel, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges, 2. Monumental documentary black-and-white photograph in the spirit of Sebastiao Salgado, intimate medium shot inside a dark yak-wool tent, a woman preparing butter tea over a dung stove, her face placed to the far left third while a shaft of light cuts through smoke and steam rising from a dented kettle, glowing embers below and cold skylight above shaping her features, rough hands, weathered skin, felt clothing from 2006, hanging utensils fading into shadow, asymmetrical composition, partial crop of shoulder and kettle rim, dramatic chiaroscuro, rich textures of soot, metal, wool, and vapor, high resolution, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges, 3. Monumental documentary black-and-white photograph in the spirit of Sebastiao Salgado, low-angle close-up of raw work-worn hands kneading tsampa with butter tea in a wooden bowl, the bowl pushed off-center in the foreground while beyond the hands the tent opening reveals a distant glacier, cloud sea, and remote snow peaks, steam glowing in backlight, flour dust and grease catching the light, cropped wrists and bowl edge for tension, telephoto detail with surprising depth to the landscape, profound tonal richness, sacred dignity of food and labor, 4:5, no frame, no borders, no photographic borders, no white margins, clean edges, 4. Monumental documentary black-and-white photograph in the spirit of Sebastiao Salgado, heroic aerial-like wide shot over a bleak Himalayan grazing basin, a woman carrying a basket of dried dung fuel across the plateau, tiny against sweeping mountain walls and layered storm clouds, staggered stacks of dung patties forming rhythmic foreground texture, wind haze and high thin air whitening the distance, horizon slightly shifted, subject placed near the lower right third, immense negative space emphasizing scale and hardship, powerful documentary grandeur, 2006 nomadic garments, fine to medium film grain, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges, 5. Monumental documentary black-and-white photograph in the spirit of Sebastiao Salgado, forceful medium shot of yak-milk butter churning inside the tent, a woman driving a tall wooden churn with rhythmic muscular arms, low camera perspective looking upward past her body toward the tent opening where bright alpine sky and far ridges appear, steam and smoke twisting around the churn in a column of light, intense concentration in the face, cropped elbow and churn top breaking the frame, diagonals and off-center balance, biblical dignity, exquisite texture in wood grain, wool sleeves, and damp skin, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges, 6. Monumental documentary black-and-white photograph in the spirit of Sebastiao Salgado, extreme wide-angle interior-exterior composition of a family seated in a rough circle for a communal meal, dark tent interior framing a blazing central shaft of light and drifting steam, bowls in coarse hands, figures arranged asymmetrically around the lower half while the open flap reveals endless plateau and distant peaks beyond, one foreground shoulder cropped close, silence and gravity, fire glow mixing with glacial daylight, dense blacks, brilliant highlights, profound human solidarity in a barren world, 2006 material culture, high resolution, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges, 7. Monumental documentary black-and-white photograph in the spirit of Sebastiao Salgado, tender close medium shot of an old woman passing a steaming bowl to a child, both positioned low in frame from a slightly upward angle so that behind them the tent opening and a sea of clouds over Himalayan slopes remain visible, side light shaping their faces with reverence, the bowl and rising steam becoming the luminous center, surrounding darkness swallowing details, partial crop of the child's shoulder and the elder's sleeve, timeless compassion, austere nobility, 4:5, no frame, no borders, no photographic borders, no white margins, clean edges, 8. Monumental documentary black-and-white photograph in the spirit of Sebastiao Salgado, atmospheric still-life documentary scene of stored provisions hanging in the half-dark of a yak-wool tent, strands of dried cheese, meat, and worn supply bags suspended in layered depth, a steaming kettle and dung stove glowing below, smoke rising toward a hard beam of light from above, low camera angle allowing a sliver of distant snow mountains through the entrance, asymmetrical arrangement with heavy shadow swallowing one side of the frame, tactile realism, sacred economy of survival, sumptuous tonal scale, analog medium-format clarity, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #202" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 18:08:08" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_202.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_202.png"
  fi
fi

# === 203: 8vnOGHKIrU ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_203.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4628066612/render.png?token=exp=1782518400~hmac=240594f29627e95fc2e42af23088a5c7b3bb20da254cf1a35830f307119a0763"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 1. Monumental black-and-white documentary photograph in the spirit of Sebastião Salgado, extreme wide-angle view over the Tibetan plateau at dawn, a tiny nomad woman milking a yak beside a black yak-wool tent, off-center on the lower left, immense mountain wall and wind-blown cloud fields dominating the frame, warm milk steaming into the freezing air, the yak’s flank and one horn cropped by the edge, luminous mist, deep velvety blacks, radiant whites, sculptural backlight, archival 2006 clothing and simple gear, analog medium-format character, high detail, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #203" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 18:13:21" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_203.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_203.png"
  fi
fi

# === 204: 0p9xPmyTfW ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_204.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4628119561/render.png?token=exp=1782518400~hmac=44aa4940a926523dd818dede2c3f967e6c67b1c6890d2a3f10ace261fb39d32b"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 2. Monumental black-and-white documentary photograph in the spirit of Sebastião Salgado, intimate medium shot inside a dark yak-wool tent, a woman preparing butter tea over a dung stove, face turned slightly away and placed on the right third, a shaft of light from the roof opening carving through smoke and steam, kettle blazing with highlights above glowing embers, foreground shoulder cropped, vast highland brightness glimpsed beyond the tent slit to preserve mountain immensity, rich tonal scale, dramatic chiaroscuro, tactile skin, wool, soot and metal, 2006 Tibetan nomad clothing, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #204" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 18:13:23" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_204.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_204.png"
  fi
fi

# === 205: 43rvkct9Aa ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_205.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4628167497/render.png?token=exp=1782518400~hmac=eaf21ce0f7905c4e58b1f662fdd8bd9e69c4ff10426f1a72bd22300d942bd672"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 3. Monumental black-and-white documentary photograph in the spirit of Sebastião Salgado, aerial-like high vantage over a barren Himalayan upland camp, family members as small dark figures gathering and stacking dried dung fuel, one woman carrying a loaded basket along a diagonal path, black tent and yak herd scattered below, immense negative space of haze and plateau stretching to distant glacier peaks, asymmetrical composition, wind lifting dust, severe contrast, austere grandeur, timeless survival atmosphere with accurate 2006 nomad dress and tools, fine to medium grain, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #205" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 18:13:23" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_205.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_205.png"
  fi
fi

# === 206: aQV6MMIfSh ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_206.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4628222854/render.png?token=exp=1782518400~hmac=0d4d8d3e535817b233c759db40ea19f21cebf8813d09c5d628b220b1ef4c8ea9"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 4. Monumental black-and-white documentary photograph in the spirit of Sebastião Salgado, close telephoto detail of raw weathered hands kneading tsampa with butter tea inside a wooden bowl, steam glowing in hard side light, wrists and bowl cropped tightly, but behind the hands a low camera angle still reveals the tent opening with a luminous strip of distant snow ridges and cloud sea, tactile flour, grease and cracked skin, sacred labor, deep blacks and brilliant vapor highlights, analog precision, 4:5 detail frame, 2006 period authenticity, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #206" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 18:16:25" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_206.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_206.png"
  fi
fi

# === 207: tfWPeMtmZJ ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_207.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4628274168/render.png?token=exp=1782518400~hmac=516ced206af584c87afc0a58df7efde8ca23e62ddce162e40c34751498c887ed"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 5. Monumental black-and-white documentary photograph in the spirit of Sebastião Salgado, heroic extreme wide shot of a nomad family seated in a circle for a shared meal at the mouth of the tent, figures low in the foreground and slightly right of center, bowls raised in rough hands while steam rises into a vast backdrop of high plateau, glacier tongues and storm-built sky, one child partially cut by the frame edge, strong diagonal horizon, solemn communal stillness, dramatic mountain scale overwhelming the human group yet preserving dignity, luminous smoke and hard alpine light, 2006 clothing and utensils, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #207" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 18:22:43" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_207.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_207.png"
  fi
fi

# === 208: rlvVSmyxtc ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_208.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4628363403/render.png?token=exp=1782518400~hmac=0f809daad27aca99c5cb3b43e685cf2001169a725500b1818c1e100373028fc2"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 7. Monumental black-and-white documentary photograph in the spirit of Sebastião Salgado, vast panoramic wide-angle scene of yak milk being processed outdoors beside a stream on the plateau, pots, cloths and low stools scattered in the foreground, two tiny figures bent over steaming vessels while an enormous amphitheater of mountains, snowfields and torn clouds rises behind them, cold counterlight making breath and vapor shine, asymmetrical placement with broad negative space of mist, one yak entering cropped from the right edge, austere majesty, 2006 nomad material culture, high-resolution 3:2, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #208" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 18:33:30" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_208.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_208.png"
  fi
fi

# === 209: wPq8AGu7EI ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_209.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4628413586/render.png?token=exp=1782518400~hmac=e28a3e21d68dee0e3d5519a5877ce4bf267019e1b46fa0ed67944377c763a451"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 8. Monumental black-and-white documentary photograph in the spirit of Sebastião Salgado, intimate close medium shot of an elderly woman passing a steaming bowl of butter tea to a child, both low in frame and offset to the far right, soft side light from the tent entrance sculpting faces while the dung stove smoke rises behind them, hanging strings of dried cheese and provisions fading into shadow, the left side opening to a pale luminous glimpse of distant mountains and cloud depth, cropped hands and shoulders creating tension, reverent tenderness, powerful contrast, fine grain, 4:5, historically grounded in 2006, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #209" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 18:39:46" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_209.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_209.png"
  fi
fi

# === 210: l7ud1wXgv9 ===
FPATH="$BASE/20260617_2006-YAK-Nomads_Magnific_210.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4628469171/render.png?token=exp=1782518400~hmac=085e27746ab0ee682efb0713e7e19e0d0992747540fa4bc0a2492892c7cc3b7a"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 1. Monumental wide documentary black-and-white photograph in the style of Sebastiao Salgado, Tibetan yak nomads at dawn on the high Himalayan plateau in 2006, a woman milking a yak in the left third of the frame with her forehead pressed to its flank, the animal partly cropped by the edge, warm milk steaming into icy backlight, breath clouds, vast windswept plain and distant snow mountains filling the negative space, low camera angle, dramatic tonal range, sculptural contrast, luminous mist, fine to medium film grain, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #210" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:17 19:14:00" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260617_2006-YAK-Nomads_Magnific_210.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260617_2006-YAK-Nomads_Magnific_210.png"
  fi
fi

# === 211: ubdF1GSQLD ===
FPATH="$BASE/20260618_2006-YAK-Nomads_Magnific_211.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4641289818/render.png?token=exp=1782518400~hmac=b5306b1c00953c76d6ee48c20ab55f4c8bff75dc77fb6e84c4635519d808ecb5"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 1. Monumental black-and-white documentary photograph in the spirit of Sebastião Salgado, extreme wide-angle view over a vast Himalayan plateau wedding camp of Tibetan yak nomads, the bridal procession crossing a wind-scoured plain beneath immense snow ranges, prayer flags slashing diagonally through the sky, decorated yaks and horses reduced to solemn silhouettes, cold dawn haze and thin high-altitude air glowing in fierce backlight, smoke offerings rising in luminous columns, deep tonal scale from velvety blacks to radiant whites, sculptural contrast, epic human smallness against overwhelming mountain grandeur, timeless 2006 ethnographic detail in textiles and tack, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges, 2. Intimate black-and-white close portrait in the spirit of Sebastião Salgado, Tibetan nomad bride in full ceremonial dress with elaborate headdress, braided hair, silver, turquoise and coral ornaments rendered with razor-sharp texture, hard side light carving the metal and stones, her expression grave and luminous, low camera angle opening behind her shoulder toward distant glaciers and a sea of mist, breath visible in the cold air, high-altitude solemnity, rich filmic grain, monumental dignity, timeless 2006 authenticity, 4:5, no frame, no borders, no photographic borders, no white margins, clean edges, 3. Monumental black-and-white aerial-like high vantage in the spirit of Sebastião Salgado, families and wedding guests gathered in dense formation around a smoking sang offering on the open plateau, the crowd arranged like a living constellation amid barren land, far peaks and layered ridges dissolving into mist, prayer flags and yak lines creating leading lines across the composition, stark morning light cutting through smoke and atmosphere, biblical gravity, immense scale of the mountains dominating the ceremony, timeless 2006 nomadic details, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges, 4. Black-and-white medium shot in the spirit of Sebastião Salgado, a lama blessing the bride and groom inside a great assembly tent, butter lamps flickering, incense smoke stratifying the darkness, faces of elders and children emerging from chiaroscuro, low vantage behind ceremonial vessels so the eye rises past the figures toward the bright tent opening and the pale mountain world beyond, textures of brocade, fur, skin and prayer scarves intensely rendered, solemn communal devotion, timeless 2006 detail, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges, 5. Monumental black-and-white extreme wide-angle in the spirit of Sebastião Salgado, decorated yaks and horses with tasseled harnesses and festive cloths standing with mounted riders on a ridge above the wedding encampment, tiny human forms aligned against colossal cloudbanks, glacier faces and serrated summits, dramatic crosswind carrying smoke and dust, severe low sun producing radiant halos and dense black shadows, heroic composition with strong diagonals and layered depth, profound bond of people, animals and sacred landscape, timeless 2006 realism, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges, 6. Black-and-white close-up in the spirit of Sebastião Salgado, hands passing a ceremonial white khata and a steaming bowl of tea during the wedding rite, every wrinkle, woven fiber and metal bracelet described with tactile precision, low camera position allowing the background to fall away into blurred guests, prayer flags and immense snowy ridges, visible vapor and incense smoke glowing in backlight, intimate gesture carrying epic altitude and communal gravity, timeless 2006 ethnographic fidelity, 4:5, no frame, no borders, no photographic borders, no white margins, clean edges, 7. Black-and-white medium-wide documentary image in the spirit of Sebastião Salgado, communal dance and song erupting outside the tent, swirling robes and braids caught in fierce backlight, festively dressed nomads moving in a circular rhythm while smoke and breath stream around them, low angle preserving a vast background of open plateau, distant summit walls and rolling clouds, dynamic off-center framing, high contrast, luminous dust and textile textures, joy without folklore, solemn exultation of the high mountains, timeless 2006 detail, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges, 8. Monumental black-and-white medium shot in the spirit of Sebastião Salgado, a quiet moment between bride and mother at the edge of the feast, foreheads nearly touching as the older woman adjusts jewelry or collar, steam from food and incense drifting through a shaft of pale light, rows of seated guests receding behind them, low perspective carrying the eye past their figures toward the open tent flap, endless highland brightness and remote peaks beyond, emotional restraint, tenderness, dignity, rich tonal depth and fine grain, timeless 2006 authenticity, 4:5, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #211" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:18 21:12:20" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260618_2006-YAK-Nomads_Magnific_211.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260618_2006-YAK-Nomads_Magnific_211.png"
  fi
fi

# === 212: kLhrwI016B ===
FPATH="$BASE/20260618_2006-YAK-Nomads_Magnific_212.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4641306066/render.png?token=exp=1782518400~hmac=3b47338e23f614e2163b56a288cd59e71b85e1c1e625efe5b0a0a6314bbe708b"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 1. Monumental black-and-white documentary photograph in the spirit of Sebastião Salgado, extreme wide-angle view over a vast Himalayan plateau wedding camp of Tibetan yak nomads, the bridal procession crossing a wind-scoured plain beneath immense snow ranges, prayer flags slashing diagonally through the sky, decorated yaks and horses reduced to solemn silhouettes, cold dawn haze and thin high-altitude air glowing in fierce backlight, smoke offerings rising in luminous columns, deep tonal scale from velvety blacks to radiant whites, sculptural contrast, epic human smallness against overwhelming mountain grandeur, timeless 2006 ethnographic detail in textiles and tack, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges, 2. Intimate black-and-white close portrait in the spirit of Sebastião Salgado, Tibetan nomad bride in full ceremonial dress with elaborate headdress, braided hair, silver, turquoise and coral ornaments rendered with razor-sharp texture, hard side light carving the metal and stones, her expression grave and luminous, low camera angle opening behind her shoulder toward distant glaciers and a sea of mist, breath visible in the cold air, high-altitude solemnity, rich filmic grain, monumental dignity, timeless 2006 authenticity, 4:5, no frame, no borders, no photographic borders, no white margins, clean edges, 3. Monumental black-and-white aerial-like high vantage in the spirit of Sebastião Salgado, families and wedding guests gathered in dense formation around a smoking sang offering on the open plateau, the crowd arranged like a living constellation amid barren land, far peaks and layered ridges dissolving into mist, prayer flags and yak lines creating leading lines across the composition, stark morning light cutting through smoke and atmosphere, biblical gravity, immense scale of the mountains dominating the ceremony, timeless 2006 nomadic details, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges, 4. Black-and-white medium shot in the spirit of Sebastião Salgado, a lama blessing the bride and groom inside a great assembly tent, butter lamps flickering, incense smoke stratifying the darkness, faces of elders and children emerging from chiaroscuro, low vantage behind ceremonial vessels so the eye rises past the figures toward the bright tent opening and the pale mountain world beyond, textures of brocade, fur, skin and prayer scarves intensely rendered, solemn communal devotion, timeless 2006 detail, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges, 5. Monumental black-and-white extreme wide-angle in the spirit of Sebastião Salgado, decorated yaks and horses with tasseled harnesses and festive cloths standing with mounted riders on a ridge above the wedding encampment, tiny human forms aligned against colossal cloudbanks, glacier faces and serrated summits, dramatic crosswind carrying smoke and dust, severe low sun producing radiant halos and dense black shadows, heroic composition with strong diagonals and layered depth, profound bond of people, animals and sacred landscape, timeless 2006 realism, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges, 6. Black-and-white close-up in the spirit of Sebastião Salgado, hands passing a ceremonial white khata and a steaming bowl of tea during the wedding rite, every wrinkle, woven fiber and metal bracelet described with tactile precision, low camera position allowing the background to fall away into blurred guests, prayer flags and immense snowy ridges, visible vapor and incense smoke glowing in backlight, intimate gesture carrying epic altitude and communal gravity, timeless 2006 ethnographic fidelity, 4:5, no frame, no borders, no photographic borders, no white margins, clean edges, 7. Black-and-white medium-wide documentary image in the spirit of Sebastião Salgado, communal dance and song erupting outside the tent, swirling robes and braids caught in fierce backlight, festively dressed nomads moving in a circular rhythm while smoke and breath stream around them, low angle preserving a vast background of open plateau, distant summit walls and rolling clouds, dynamic off-center framing, high contrast, luminous dust and textile textures, joy without folklore, solemn exultation of the high mountains, timeless 2006 detail, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges, 8. Monumental black-and-white medium shot in the spirit of Sebastião Salgado, a quiet moment between bride and mother at the edge of the feast, foreheads nearly touching as the older woman adjusts jewelry or collar, steam from food and incense drifting through a shaft of pale light, rows of seated guests receding behind them, low perspective carrying the eye past their figures toward the open tent flap, endless highland brightness and remote peaks beyond, emotional restraint, tenderness, dignity, rich tonal depth and fine grain, timeless 2006 authenticity, 4:5, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #212" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:18 21:14:53" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260618_2006-YAK-Nomads_Magnific_212.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260618_2006-YAK-Nomads_Magnific_212.png"
  fi
fi

# === 213: vuVfLvua47 ===
FPATH="$BASE/20260618_2006-YAK-Nomads_Magnific_213.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4641359893/render.png?token=exp=1782518400~hmac=e3344d84474cb2fbd22ce759bed1ac67ee1a64c6efc960f62079af7d49454e04"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 1. Monumental black-and-white documentary photograph in the style of Sebastiao Salgado, extreme wide-angle view across the Tibetan high plateau in deepest winter, a black yak-wool tent half buried under snowdrifts at 4000 meters, one tiny family emerging against an immense field of white, distant Himalayan peaks swallowed by storm cloud, blowing snow carving the image into luminous layers, hard reflected winter light, vast negative space, sculptural contrast from abyssal blacks to blinding snow whites, mystical high-altitude atmosphere, analog medium-format grain, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges, 2. Monumental black-and-white documentary photograph in the style of Sebastiao Salgado, intimate medium shot of a Tibetan nomad wedding in a snowstorm, bride and groom in 2006 festive highland clothing with heavy silver jewelry and layered wool garments, breath clouds rising during a blessing, decorated yaks looming behind them through white gusts, low camera angle opening toward endless snowy plain and faint mountain walls beyond, swirling snow and frost on fabric, biblical dignity, rich tonal scale, dramatic backlight, high detail in skin, wool, metal and ice, 4:5, no frame, no borders, no photographic borders, no white margins, clean edges, 3. Monumental black-and-white documentary photograph in the style of Sebastiao Salgado, close-up portrait of a weathered yak herder with hoarfrost on eyebrows, beard and cracked skin, every wrinkle marked by winter, eyes unwavering, wrapped in heavy wool and fur appropriate to 2006 Himalayan nomad life, low viewpoint with the face dominating foreground while far below and behind stretch ghostly glaciers and cloud seas, airborne ice crystals catching light, severe chiaroscuro, fine to medium film grain, 4:5, no frame, no borders, no photographic borders, no white margins, clean edges, 4. Monumental black-and-white documentary photograph in the style of Sebastiao Salgado, heroic aerial-like wide shot of a yak herd crossing a wind-scoured white basin under moonlit night, black bodies dusted with snow and rimmed with frost, breath steaming into the frozen dark, one lone watcher and a tiny fire near the edge of the frame, immense plateau and remote peaks fading into cloud, deep blacks and silvery whites, stark lunar atmosphere, high-altitude mysticism, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges, 5. Monumental black-and-white documentary photograph in the style of Sebastiao Salgado, medium-close scene inside a storm-battered yak-wool tent, family pressed tightly together around dim embers, faces rising from darkness with solemn warmth while outside the entrance the blizzard burns white, low camera position revealing through the opening a vast snowfield and distant mountains, dense textures of wool, smoke, frost-melted skin and ritual objects, dramatic interior chiaroscuro, reverent documentary realism, 4:5, no frame, no borders, no photographic borders, no white margins, clean edges, 6. Monumental black-and-white documentary photograph in the style of Sebastiao Salgado, extreme wide-angle storm scene of a herder driving yaks through near-whiteout conditions, human and animals reduced to battling silhouettes in a chaos of blowing snow, low horizon, giant mountain ridges barely visible through vapor and ice, the white world swallowing form and then releasing it, ferocious wind, short shutter freezing airborne crystals, epic scale, severe tonal minimalism with selective deep blacks, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges, 7. Monumental black-and-white documentary photograph in the style of Sebastiao Salgado, medium shot of children playing wildly in fresh snow, laughter visible in open mouths and breath, snowflakes caught in eyelashes, frost on cheeks and wool hats, low camera angle so their movement rises against endless bright plateau, glacier slopes and remote peaks behind them, joy set against lethal cold, crisp sculptural light, high texture in knitted wool and airborne snow, emotionally radiant yet austere, 4:5, no frame, no borders, no photographic borders, no white margins, clean edges, 8. Monumental black-and-white documentary photograph in the style of Sebastiao Salgado, vast ceremonial landscape with frozen prayer flags rigid under rime ice, one praying figure bent in the gale as offering smoke is torn apart instantly by the wind, tiny against an enormous Himalayan escarpment and cloud-choked sky, sweeping snowfields dominating the composition, low oblique perspective emphasizing spiritual solitude and mountain immensity, dramatic contrast with luminous whites and velvet blacks, sacred, austere, transcendent, analog medium-format grain, 3:2, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #213" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:18 21:23:09" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260618_2006-YAK-Nomads_Magnific_213.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260618_2006-YAK-Nomads_Magnific_213.png"
  fi
fi

# === 214: VdiDb3oMMU ===
FPATH="$BASE/20260618_2006-YAK-Nomads_Magnific_214.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4641402617/render.png?token=exp=1782518400~hmac=06e7f314d5f5b04a33a367d0463619b082a53606439ca4cd978ebfa8ba1f125e"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 1. Monumental black and white documentary photograph in the style of Sebastiao Salgado, pre-dawn dismantling of a Tibetan yak-nomad camp on the high plateau, black yak-hair tent being rolled and bound, bundled household goods scattered in frost and dust, figures emerging through cold mist and smoke, immense Himalayan horizon with distant snow peaks towering beyond, extreme wide-angle low vantage, tiny human silhouettes beneath a vast luminous sky, dramatic backlight catching breath clouds and drifting dust, deep tonal range from velvety blacks to radiant whites, sculptural chiaroscuro, 2006 clothing details with heavy wool garments, felt boots, rope lashings, archaic nomadic realism, epic processional atmosphere, 3:2, high detail, fine to medium film grain, no frame, no borders, no photographic borders, no white margins, clean edges, 2. Close documentary scene in the style of Sebastiao Salgado, a heavily burdened yak being loaded with folded tent poles, sacks, cookware, blankets and tightly lashed bundles, tense hands pulling hemp ropes, strained muscles of both herder and animal, low camera angle so the massive yak fills the foreground while endless plateau, cloudbanks and far glacier-bright ridges open behind, dust suspended in hard morning sidelight, tactile textures of fur, rope, worn leather and rough skin, powerful monochrome contrast, intimate yet monumental, timeless Tibetan highland migration, 2006 material culture only, 4:5, razor-sharp detail, analog medium-format feel, no frame, no borders, no photographic borders, no white margins, clean edges, 3. Vast panoramic black and white image in the style of Sebastiao Salgado, the long yak caravan stretching like a calligraphic line across an immense Himalayan plain, men, women, children and laden animals reduced to tiny moving marks beneath colossal mountain walls, windblown dust glowing in fierce backlight, thin high-altitude air, atmospheric haze layering ridge behind ridge into infinity, heroic aerial-like perspective with sweeping scale, severe contrast and luminous whites on snow summits, melancholic dignity and biblical procession, 2006 nomadic details embedded naturally, 16:9 panorama, high resolution, rich film grain, no frame, no borders, no photographic borders, no white margins, clean edges, 4. Medium close black and white documentary photograph in the style of Sebastiao Salgado, a nomad woman walking beside the caravan while carrying or guiding a child, her weathered face calm and unyielding, wind pulling at layered wool clothing, loaded yaks moving around her in partial silhouette, low upward camera angle revealing a sea of dust, distant peaks and immense empty sky behind, deep emotional gravity without sentimentality, dramatic side-backlight carving folds, hair, straps and breath into silver edges, strong textural emphasis on skin, fabric and burden, timeless Himalayan migration, 2006 authenticity in dress and gear, 3:2, high detail, fine grain, no frame, no borders, no photographic borders, no white margins, clean edges, 5. Heroic black and white wide shot in the style of Sebastiao Salgado, a lead herder striding at the front of the moving caravan along a high ridge, shouting into the wind as laden yaks follow in staggered rhythm, low horizon and towering cloud-filled sky, distant glacier fields and serrated summits dominating the background, powerful silhouette in cold dawn haze, dust and breath made visible by hard backlight, strong leading lines through ridge path and animal procession, solemn grandeur, archaic freedom and labor fused into one image, 2006 wool garments and traditional rope tack, 3:2, high sharpness, medium-format tonal depth, no frame, no borders, no photographic borders, no white margins, clean edges, 6. Dynamic black and white documentary photograph in the style of Sebastiao Salgado, river crossing during the migration, yaks and nomads wading through icy water, splashes flashing white against dark bodies, ropes taut, legs braced, fear and determination contained in posture rather than expression, low near-water viewpoint opening toward a broad valley with distant snowy mountains and receding caravan beyond, luminous mist, freezing air, dramatic contrast and layered depth through spray and haze, monumental realism, 2006 nomadic equipment and clothing only, 3:2, high detail, fine to medium grain, no frame, no borders, no photographic borders, no white margins, clean edges, 7. Near-abstract close-up in the style of Sebastiao Salgado, the back of a heavily laden yak filling most of the frame, densely tied bundles, rolled textiles, wooden tools, leather straps and hemp rope crossing in complex geometry, rich fur texture and frost crystals rendered with exquisite monochrome detail, but from a low angle the eye still escapes past the animal into a remote world of blown dust, pale sky and far mountain silhouettes, intensely tactile, austere and powerful, sculptural black and white tonality, 2006 historical materials, 4:5, very high resolution, analog grain, no frame, no borders, no photographic borders, no white margins, clean edges, 8. Epic black and white highland passage in the style of Sebastiao Salgado, the caravan cresting a wind-beaten mountain pass hung with prayer flags, figures and yaks climbing through swirling mist and dust, cloth streaming violently against a vast radiant sky, enormous negative space and plunging valleys beyond, extreme wide-angle from a low rocky foreground making the procession appear both fragile and monumental, deep blacks in the pass stones, blazing whites in cloud and snow, spiritual gravity, movement, endurance and belonging to the journey itself, 2006 Tibetan nomad clothing and pack gear, 16:9, high detail, fine film grain, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #214" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:18 21:29:52" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260618_2006-YAK-Nomads_Magnific_214.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260618_2006-YAK-Nomads_Magnific_214.png"
  fi
fi

# === 215: mC0vwGRhJQ ===
FPATH="$BASE/20260618_2006-YAK-Nomads_Magnific_215.png"
if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
  SKIPPED=$((SKIPPED + 1))
else
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4641416842/render.png?token=exp=1782518400~hmac=dc101f245d15aef9afaf2cd2f7ceab38cf3531c1896a2f2db6ca74128706c136"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    DESC=$(cat <<'PROMPT_EOF'
Create image-generator; 1. Monumental documentary black-and-white night photograph in the style of Sebastiao Salgado, extreme wide-angle view across the Tibetan high plateau at deep night, a black yak-wool tent as a tiny dark form in an ocean of land, one faint warm glow leaking from the entrance and smoke hole, vast moonlit plain filled with resting yaks as scattered black masses, distant snow peaks hovering under thin cloud and stars, immense negative space, velvet blacks, sparse silver moonlight, sacred stillness, high-altitude cold made visible through haze and breath, heroic scale with human life reduced to a fragile ember in the landscape, ultra-rich tonal depth, fine to medium film grain, 3:2, high resolution, no frame, no borders, no photographic borders, no white margins, clean edges, 2. Intimate interior documentary black-and-white photograph in the style of Sebastiao Salgado, close view inside a dark yak-wool tent, a sleeping family pressed together beneath heavy woven yak blankets, only the dying glow of a dung stove lifting cheeks, brows, and folded hands from near-total darkness, the rest swallowed by deep matte black, smoke barely visible in the thin air, tender yet monumental chiaroscuro, reverent silence, low-key composition with one precious island of light, analog medium-format night character, delicate highlight retention, 4:5, high resolution, no frame, no borders, no photographic borders, no white margins, clean edges, 3. Monumental documentary black-and-white night photograph in the style of Sebastiao Salgado, low-angle medium-long shot of a solitary yak herder keeping watch beside a tiny fire, wrapped in thick wool layers, face carved by ember light while behind him the immense plateau opens into moonlit emptiness, resting herd fading into darkness, gigantic glacier faces and remote Himalayan ridges barely luminous beyond, the camera placed close to the ground so the figure rises against a vast cold sky full of stars, profound isolation, spiritual dignity, severe contrast, textured grain, 3:2, high resolution, no frame, no borders, no photographic borders, no white margins, clean edges, 4. Documentary black-and-white close-up in the style of Sebastiao Salgado, a sleeping child inside the tent illuminated by the last pulse of the stove's glow, eyelashes, cheek, and wool fibers rendered with exquisite clarity while everything around dissolves into velvet night, a sliver of cold moonlight entering from the doorway to create a subtle duality of warmth and frost, intimate but monumental, fragile protection in a hostile world, restrained composition, luminous skin tones translated into silver-gray, fine grain, 4:5, high resolution, no frame, no borders, no photographic borders, no white margins, clean edges, 5. Monumental documentary black-and-white night landscape in the style of Sebastiao Salgado, extreme wide-angle moonlit scene of the yak herd resting across the open Himalayan plain, animals appearing as massive dark silhouettes with pale breath clouds drifting in the frozen thin air, a single watchman as a tiny silhouette on a ridge beneath an enormous sky, distant snow mountains and glacial shoulders glowing faintly through nocturnal haze, dramatic tonal separation between silver ground and abyssal sky, austere grandeur, mystical stillness, epic depth, 3:2, high resolution, no frame, no borders, no photographic borders, no white margins, clean edges, 6. Documentary black-and-white detail photograph in the style of Sebastiao Salgado, close shot of weathered hands stirring the final embers of a dung fire inside the tent, sparks and ash giving off a weak living glow, part of a face emerging from darkness at the frame edge, black wool walls absorbing nearly all light, smoke and heat shimmer barely traced against the void, tactile realism, devotional low-key chiaroscuro, human survival reduced to hands, heat, and breath, strong micro-contrast in illuminated textures, 4:5, high resolution, no frame, no borders, no photographic borders, no white margins, clean edges, 7. Monumental documentary black-and-white night photograph in the style of Sebastiao Salgado, aerial-like high vantage over a nomad encampment on the Tibetan plateau, one dark tent emitting a single warm glow amid an immense barren basin, one yak lying near the shelter with moonlit fur edges and visible breath, herd dispersed as black punctuation across the plain, vast mountain walls and snow summits enclosing the scene under a crystalline star field, minimal light, majestic emptiness, noble solitude, deep blacks with precious highlights, cinematic yet austere realism, 3:2, high resolution, no frame, no borders, no photographic borders, no white margins, clean edges, 8. Documentary black-and-white medium shot in the style of Sebastiao Salgado, a sleeping figure near the tent entrance, body wrapped in layered wool, one half bathed in the warm red-black glow of the stove and the other touched by cold moonlight from outside, the doorway opening beyond the subject toward a limitless night plain, faint silhouettes of yaks and far snowy peaks visible in the background, low camera perspective preserving the immense world beyond the human body, profound contrast between shelter and exposure, intimate, solemn, and quietly epic, fine to medium grain, 3:2, high resolution, no frame, no borders, no photographic borders, no white margins, clean edges
PROMPT_EOF
)
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #215" \
      -Description="$DESC" \
      -DateTimeOriginal="2026:06:18 21:32:06" \
      "$FPATH" > /dev/null 2>&1
    DOWNLOADED=$((DOWNLOADED + 1))
    echo "OK: 20260618_2006-YAK-Nomads_Magnific_215.png"
  else
    FAILED=$((FAILED + 1))
    echo "FAIL: 20260618_2006-YAK-Nomads_Magnific_215.png"
  fi
fi

echo ""
echo "=== 2006 YAK Nomads ==="
echo "Heruntergeladen: $DOWNLOADED"
echo "Ãbersprungen:    $SKIPPED"
echo "Fehlgeschlagen:  $FAILED"
