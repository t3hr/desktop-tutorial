#!/bin/bash
# Download: Spaces/fotografie/2006 YAK Nomads — 59 Bilder
# Generiert: 2026-06-23

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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #157" \
      -Description="Sweeping wide-angle ground-level view, cattle legs and hooves, Dinka herders, fog-like smoke, Salgado style" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4625262264/render.png?token=exp=1782518400~hmac=3d99f3ad9e98334726174435c4be55346c860a27e7fece47ac3c459f2132fe8e"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #158" \
      -Description="Yak caravan crossing Tibetan high plateau at dawn, nomads and yaks, immense snow mountains, Salgado style" \
      -DateTimeOriginal="2026:06:17 13:26:25" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4625407909/render.png?token=exp=1782518400~hmac=01762ed3f29f03539b9062275ccb4130b1e0b3acdcf41a6e8eab60e93525e05c"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #159" \
      -Description="Vast yak caravan crossing Tibetan high plateau at dawn, cold ground mist, Himalayan ranges, Salgado style" \
      -DateTimeOriginal="2026:06:17 14:06:15" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4625492386/render.png?token=exp=1782518400~hmac=3f0967198c190d48de13241063ccbc5b89d5c588ff073a746323f208361d5654"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #160" \
      -Description="Weathered Tibetan yak nomad portrait with enormous yak, low angle, vast cloud sea, glaciated ridges" \
      -DateTimeOriginal="2026:06:17 14:06:17" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4625575746/render.png?token=exp=1782518400~hmac=9fd6c6a6eb977d68d97e786b9fa3abc4c9457688b78893d4bc278e5fb3d3554c"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #161" \
      -Description="Nomad camp on Ladakh highland, black yak-wool tents, barren plateau above 4000 meters" \
      -DateTimeOriginal="2026:06:17 14:06:18" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4625653469/render.png?token=exp=1782518400~hmac=b79b51787175289f0f8019af40b9a2593549eddca60a3958ec55cdb5b0471b80"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #162" \
      -Description="Tibetan herder pressing forehead against yak head, dense winter fur, distant ice-bright peaks" \
      -DateTimeOriginal="2026:06:17 14:06:18" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4625735361/render.png?token=exp=1782518400~hmac=e112f2a8425dce6a09e594ead89e348bae0baac24383fd93e991f1307799e9e3"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #163" \
      -Description="Young yak herders driving herd through swirling snow, wind-scoured Himalayan plateau" \
      -DateTimeOriginal="2026:06:17 14:06:20" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4625814149/render.png?token=exp=1782518400~hmac=42930c695395dc8672db328ddebef332fa8422b192ee70a46759d43dca430f54"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #164" \
      -Description="Near-abstract detail of giant yak horn, eye, tangled shaggy coat, frost clinging to hair" \
      -DateTimeOriginal="2026:06:17 14:06:21" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4625885120/render.png?token=exp=1782518400~hmac=6e86b6da6c6145915a26a798adff80218be6d5ef4306cd5a53f15e2b45b8c18f"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #165" \
      -Description="Aerial-style wide view, nomads and yaks threading along high ridge above sea of fog" \
      -DateTimeOriginal="2026:06:17 14:12:39" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4625955944/render.png?token=exp=1782518400~hmac=4ae0aa7e9f1a06b48d919658f6e3a2773084c5305d11d007838659956f7a48ee"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #166" \
      -Description="Older Tibetan nomad in three-quarter profile gripping rope beside laden yaks, glacier basin" \
      -DateTimeOriginal="2026:06:17 14:18:57" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626071419/render.png?token=exp=1782518400~hmac=40a6fcb18918e69d4c5504fa15504afac45a720826f5dff5be3171664ec829d8"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #167" \
      -Description="8 scenes of Tibetan yak nomad life, tent interiors, family, children, grandmother, patriarch" \
      -DateTimeOriginal="2026:06:17 14:58:07" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626190123/render.png?token=exp=1782518400~hmac=2607e952925fac718319a3d9527ffd9a4b69b36a0b95af7bedcb29e9a405c95d"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #168" \
      -Description="Extreme wide-angle, lone black yak-wool nomad tent on Tibetan plateau at dawn" \
      -DateTimeOriginal="2026:06:17 15:07:02" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626249148/render.png?token=exp=1782518400~hmac=d6a0d20c4570dc34ffab6d50023bb11432182f88237c8df61fa079927e28cb57"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #169" \
      -Description="Interior of Tibetan yak-wool tent, nomad family around central dung stove, light shaft" \
      -DateTimeOriginal="2026:06:17 15:07:04" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626315338/render.png?token=exp=1782518400~hmac=874371b16fa4953771f7bf46a5d266eb218e0e5b44e4b0c13f7194d6c44a43fc"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #170" \
      -Description="Aerial overlook across barren Himalayan nomad camp, black tents on windswept plateau" \
      -DateTimeOriginal="2026:06:17 15:07:05" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626378464/render.png?token=exp=1782518400~hmac=2469e8f0012b60f353e9c26fafcaaf8782ca543cd4dc829fc1e15191dcb79f3a"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #171" \
      -Description="Elderly grandmother inside smoky yak-wool tent holding small child, light beam" \
      -DateTimeOriginal="2026:06:17 15:07:06" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626443328/render.png?token=exp=1782518400~hmac=30a5b6a0597c84f16f1ee12c49e6f756970680e2a87955cd6abbc4f4d83dc29f"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #172" \
      -Description="Mother bent over dung stove, sparks and smoke spiraling, glacier slopes beyond" \
      -DateTimeOriginal="2026:06:17 15:07:08" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626505305/render.png?token=exp=1782518400~hmac=f6f4841f44336cd6c1fb9f4189a029dbab116eb3e0bd56e4a81147ca8934d380"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #173" \
      -Description="Children and yaks moving through morning mist around black nomad tent" \
      -DateTimeOriginal="2026:06:17 15:07:10" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626560796/render.png?token=exp=1782518400~hmac=c472aa13fcc65adc0711e2f4f62a580cae439d232a07f18a4a9104fa3a4f3a8a"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #174" \
      -Description="Dignified patriarch in half-darkness holding steaming bowl of butter tea, side light" \
      -DateTimeOriginal="2026:06:17 15:13:27" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626620247/render.png?token=exp=1782518400~hmac=c966b07c859ecf8ca088de5099b6c2630f4a1412079904b27742811a30405d04"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #175" \
      -Description="Intimate low-angle scene at tent threshold, child standing half inside half outside" \
      -DateTimeOriginal="2026:06:17 15:19:45" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626760471/render.png?token=exp=1782518400~hmac=2f1f9f831f908909371a317a14d5471d4a044847cb8e85103db6f11db319ca25"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #176" \
      -Description="Lone yak-wool nomad tent on Tibetan plateau at dawn, 1344x768 format" \
      -DateTimeOriginal="2026:06:17 16:02:39" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626818513/render.png?token=exp=1782518400~hmac=b43d6d06df6e43bf38e76ca6db4e9337a1a7b524f1a7ee07b396e11b1bff6f0c"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #177" \
      -Description="Interior of Tibetan yak-wool tent, family around dung stove, light through smoke" \
      -DateTimeOriginal="2026:06:17 16:02:42" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626872497/render.png?token=exp=1782518400~hmac=39f9c8024c38ba926add191e91fc80170c3717413e0e7121751366e5aed94b2b"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #178" \
      -Description="Aerial overlook across barren Himalayan nomad camp, 1344x768 format" \
      -DateTimeOriginal="2026:06:17 16:02:43" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626927405/render.png?token=exp=1782518400~hmac=19a80c00ea740351f8cc63037932572665eac94011351c1826c463ae871d2bae"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #179" \
      -Description="Elderly grandmother in smoky tent holding child, soft light beam, 1344x768" \
      -DateTimeOriginal="2026:06:17 16:02:45" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4626979530/render.png?token=exp=1782518400~hmac=0173e53e6eceae5a7bf74e300427de73ff9ee7d7e074c533499a282d755d2265"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #180" \
      -Description="Mother bent over dung stove, sparks and smoke, glacier slopes, 1344x768" \
      -DateTimeOriginal="2026:06:17 16:02:47" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4627033741/render.png?token=exp=1782518400~hmac=435c209056fe4e91cb8691969977e09b8317fd80fa890b22ca1ce13e4db0cf73"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #181" \
      -Description="Children and yaks in morning mist, black nomad tent, frost crystals, 1344x768" \
      -DateTimeOriginal="2026:06:17 16:02:48" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4627085877/render.png?token=exp=1782518400~hmac=72a3a2a95193b50fbfb8b0ff4a262417e0898a7e591a3ef6ab0a9e4a9f98e675"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #182" \
      -Description="Patriarch seated holding butter tea, side light carving profile, smoke veils" \
      -DateTimeOriginal="2026:06:17 16:09:07" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4627137978/render.png?token=exp=1782518400~hmac=1ee1e1d7c9915cccf4b33d07a2dd843396ddf80f1b88b8c37c8241648863451c"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #183" \
      -Description="Child at tent threshold, half inside half outside, smoky darkness and alpine light" \
      -DateTimeOriginal="2026:06:17 16:15:24" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4627516101/render.png?token=exp=1782518400~hmac=9d4c96b14d94d2910539ca2a6d3455611ba0c96344c0fc817142cfd347ccf53b"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #184" \
      -Description="Elderly grandmother in smoky tent holding child, 1664x2048 4:5 format" \
      -DateTimeOriginal="2026:06:17 17:19:50" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4627569623/render.jpg?token=exp=1782518400~hmac=8bc6f574bbc7d9b14a0a166e0195b5639cd1277012e645eb62cc086135fd4e45"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #185" \
      -Description="Vast yak caravan crossing Tibetan plateau at dawn, 4:5 format" \
      -DateTimeOriginal="2026:06:17 17:20:29" \
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
  curl -sL -o "$FPATH" "https://pikaso.cdnpk.net/private/production/4627619858/render.jpg?token=exp=1782518400~hmac=5f0c4075fe6fc9e037052938508f337e24b06d70da3a4990ee919eff3dbb4ab4"
  if [ -f "$FPATH" ] && [ -s "$FPATH" ]; then
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #186" \
      -Description="Vast yak caravan crossing Tibetan plateau at dawn, flash model variant" \
      -DateTimeOriginal="2026:06:17 17:20:34" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #187" \
      -Description="Nomads and yaks threading along high ridge above fog, 4:5 format" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #188" \
      -Description="8 Tibetan nomad portraits with jewelry, braided hair, silver coral ornaments" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #189" \
      -Description="8 scenes of nomad women food preparation, butter tea, tsampa, yak milking" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #190" \
      -Description="Patriarch with butter tea, side light, distant snow ridges, 4:5 format" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #191" \
      -Description="Patriarch with butter tea, side light, tent opening, 4:5 variant" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #192" \
      -Description="Family in yak-wool tent around dung stove, chiaroscuro, 4:5 format" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #193" \
      -Description="Child at tent threshold, smoky darkness and alpine light, 4:5 format" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #194" \
      -Description="Woman gathering dried yak-dung for fuel beneath Himalayan ridgelines" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #195" \
      -Description="Woman milking yak in morning mist, forehead against flank, glacial plains" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #196" \
      -Description="Weathered hands kneading tsampa with butter tea, telephoto detail" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #197" \
      -Description="Family meal outside yak-hair tent on high ridge above clouds" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #198" \
      -Description="Woman churning yak milk in tall wooden butter barrel inside tent" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #199" \
      -Description="Elderly nomad woman handing steaming bowl to child, side light" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #200" \
      -Description="Dung stove with fierce embers, steaming kettle, sparks rising" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #201" \
      -Description="8 scenes of nomad women, milking, butter tea, tsampa, churning, food" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #202" \
      -Description="8 scenes of nomad food and survival, milking, butter tea, tsampa, provisions" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #203" \
      -Description="Nomad woman milking yak beside tent, off-center, Himalayan mountain wall" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #204" \
      -Description="Woman preparing butter tea over dung stove inside tent, side light" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #205" \
      -Description="Family gathering and stacking dried dung fuel on barren highland" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #206" \
      -Description="Weathered hands kneading tsampa, telephoto detail, glacier visible beyond" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #207" \
      -Description="Nomad family communal meal at tent mouth, glacier tongues, storm sky" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #208" \
      -Description="Yak milk processing outdoors beside stream, mountains and snowfields" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #209" \
      -Description="Elderly woman passing steaming bowl of butter tea to child, tent interior" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #210" \
      -Description="Woman milking yak at dawn, forehead against flank, steaming milk" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #211" \
      -Description="Tibetan yak nomad wedding camp, prayer flags, decorated yaks and horses" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #212" \
      -Description="Tibetan nomad wedding scenes, bride portrait, sang ceremony, lama blessing" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #213" \
      -Description="Tibetan nomad camp in deepest winter, tent under snowdrifts, blizzard" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #214" \
      -Description="Yak nomad migration, caravan dismantling camp, river crossing, prayer flags" \
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
    exiftool -overwrite_original \
      -Title="2006 YAK Nomads #215" \
      -Description="Tibetan nomad camp at night, moonlit plateau, sleeping family, dying stove glow" \
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
echo "Übersprungen:    $SKIPPED"
echo "Fehlgeschlagen:  $FAILED"
