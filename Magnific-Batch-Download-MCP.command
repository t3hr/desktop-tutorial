#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# ============================================
# Magnific Batch Download via MCP
# Mac Doppelklick-App
# ============================================
# Lädt neue Bilder aus Magnific/Pikaso herunter.
# Authentifizierung per OAuth (Browser-Login, Token im Schlüsselbund).
# Kein Session-Cookie nötig, kein WAF-Problem.
#
# Beim ersten Start öffnet sich der Browser für die Magnific-Anmeldung.
# Danach wird der Token automatisch erneuert.
# ============================================

import json, os, sys, subprocess, hashlib, secrets, base64, re, time, threading
import http.server, webbrowser, urllib.request, urllib.parse, ssl
from pathlib import Path
from datetime import datetime

# ─── SSL Setup ───────────────────────────────────────────────
# macOS-Python findet oft die CA-Root-Zertifikate nicht
# (CERTIFICATE_VERIFY_FAILED). certifi liefert ein zuverlaessiges
# CA-Bundle; bei Bedarf wird es automatisch installiert.
def _setup_ssl():
    try:
        import certifi
    except ImportError:
        try:
            subprocess.run([sys.executable, "-m", "pip", "install", "--quiet",
                            "--user", "certifi"], check=True)
            import certifi
        except Exception:
            print("\033[1;33mHinweis: certifi konnte nicht installiert werden, "
                  "nutze System-Zertifikate.\033[0m")
            return
    ctx = ssl.create_default_context(cafile=certifi.where())
    ssl._create_default_https_context = lambda *a, **k: ctx

_setup_ssl()

# ─── Config ──────────────────────────────────────────────────
MCP_ENDPOINT = "https://mcp.magnific.com"
OAUTH_DISCOVERY = f"{MCP_ENDPOINT}/.well-known/oauth-authorization-server"
KS_REFRESH = "magnific-mcp-refresh-token"
KS_CLIENT = "magnific-mcp-client-id"
KS_REG_TOKEN = "magnific-mcp-reg-token"
HISTORY_FILE = Path.home() / ".magnific-download-history"
DEFAULT_OUTPUT = Path.home() / "Downloads" / "magnific"
CALLBACK_PORT = 18247

# Colors
G = '\033[0;32m'; Y = '\033[1;33m'; R = '\033[0;31m'
C = '\033[0;36m'; B = '\033[1m'; N = '\033[0m'

# ─── Folder References (aus CLAUDE.md) ──────────────────────
FOLDERS = {
    "Spaces": "88c1b57f-616d-46de-81b2-4f881771e28f",
    "Spaces/1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111": "4ca6cc5b-0ffd-4f0d-84a8-609df8cbf4b6",
    "Spaces/1963 MB W111/architecture": "010f03f8-f41d-4a15-88e9-e9931a37fdcd",
    "Spaces/1963 MB W111/reference images": "74e7b88c-7636-4b5b-b89e-55e2d80b73f9",
    "Spaces/1963 MB W111/studio": "0996ed6f-1ff7-4665-8977-f907391f68ce",
    "Spaces/1963 MB W111/urban": "7b5c603b-dbf1-4372-8610-0b4e8fc1a64a",
    "Spaces/1967 Ferrari 330GTC": "5c1d909c-cd64-4a58-9d37-c55926213a2b",
    "Spaces/1967 Ferrari 330GTC/reference images": "bf853b7d-d5b6-4536-8800-bbe212ccac9e",
    "Spaces/1970 Porsche 917K": "72906fa5-fdc5-4fd1-800f-9847ae149510",
    "Spaces/1970 Porsche 917K/racing": "425a8b5a-246b-49e3-84c1-644cc0978674",
    "Spaces/1986 McLaren MP4/2C": "6147a134-0113-4546-8d55-529e06acc75e",
    "Spaces/1986 McLaren MP4-2C/racing": "772bcda5-ad70-4294-b5c9-f83a1477dcf5",
    "Spaces/1986 McLaren MP4-2C/reference images": "213c3010-e026-4d71-9d47-f57f4433ddc8",
    "Spaces/1991 McLaren MP4/6 Honda": "1cb7d2b7-a3d2-4b53-a744-d56bfe09bfc1",
    "Spaces/2026 racing mixed": "5091c8c3-91ad-45da-b0ca-cbe66efdf842",
    "Spaces/fotografie": "d8d1d0f4-fa9b-4c0a-a002-a607243757e9",
    "Spaces/fotografie/1861 Yosemite Valley Carleton Watkins": "1e196dc0-335a-4921-919e-63d2694c4da4",
    "Spaces/fotografie/1923 Berlin August Sander": "a40e5e24-6262-46a6-bb0c-2bdce1bedac6",
    "Spaces/fotografie/1925 Alps": "c19326e3-fe2e-43c6-be20-da9e383161ff",
    "Spaces/fotografie/1958 zeche zollverein Albert Renger-Patzsch": "7c1280c6-667c-4d93-bab7-65bdd4f1722b",
    "Spaces/fotografie/1964 LNDN Brian Duffy": "bf1b3395-fb19-4734-8b5a-cce35a90b327",
    "Spaces/fotografie/1968 Paris": "ce3b639a-cd0a-4dc1-9b90-55def6d2a0f6",
    "Spaces/fotografie/1968 Shinjuku Daido Moriyama": "04f72f2d-7e40-4308-823c-bd7f271e3311",
    "Spaces/fotografie/1969 Kuba Alex Webb": "7972f623-32f9-42a7-98b3-e869b591bfad",
    "Spaces/fotografie/1984 Port-au-Prince Alex Webb": "74e40263-5492-4a05-baca-5564dadadaf0",
    "Spaces/fotografie/1989 Dhanbad Coalmine": "23a3edc4-5979-4aeb-812b-6571770093c4",
    "Spaces/fotografie/2006 YAK Nomads": "e39776fe-7d3c-445d-a587-3656a1a200f5",
    "Spaces/fotografie/2010 Hazaribagh leather": "c7274ba0-fe95-4449-b210-db2d588e9666",
    "Spaces/fotografie/2012 Chittagong shipwrecks": "1d4f3f71-a32c-4b27-9ebb-22c1a2a90b06",
    "Spaces/fotografie/2024 india": "4845d443-9078-46eb-8d56-fdccaec76f0e",
    "Spaces/fotografie/Alex Prager": "311c8aa0-f584-4890-9502-ccbe481ad5b7",
    "Spaces/fotografie/Edward Burtynsky Industrial Themes": "eb64d5b9-daa8-46ca-b33d-ca3210bf8f2d",
    "Spaces/illustration": "92102a2e-8e9e-4a28-a118-ba0a40726fe0",
    "Personal": "039d51f4-439b-463b-a899-342c80380e00",
    "Personal/__references": "1ea0763c-67ce-46fd-91cd-f64118c43978",
    "Personal/_download": "3b979565-87d5-4f4b-9733-6be243123388",
    "Personal/_download/_optimiert": "9850c3ad-9bae-4bb0-8d1d-77a7c3e6e4f8",
    "Personal/_download/SORT": "f6662c0d-b8b1-4805-8ff3-8703ca33a8cf",
    "Personal/_fotografie": "ef128f18-d7b6-4e3d-8697-35bac8ea82a4",
    "Personal/_fotografie/android": "e0a575ba-0908-4a9e-88e2-ebd5430c7602",
    "Personal/_fotografie/animal": "1e4ce39d-8b84-4482-8da3-db174b281bd8",
    "Personal/_fotografie/architecture": "940cad53-b99f-45b0-85d5-18e048e08cc0",
    "Personal/_fotografie/landscape": "8875734d-5d2c-4641-bab4-ecbf984543a3",
    "Personal/_fotografie/mockups": "5dbfcdd5-f538-410a-a735-687b88af4f67",
    "Personal/_fotografie/objekte": "03d78808-8698-4d49-865c-349a9f72a0ed",
    "Personal/_fotografie/people": "96c877ce-8232-4187-aabc-f7f60169e17f",
    "Personal/_fotografie/photoshooting": "97a3fc0a-2662-40ed-945b-c9d0ef3c2602",
    "Personal/_fotografie/surreal": "ea35e32e-4cce-4d19-82f2-ffd5e7346914",
    "Personal/_Illustration": "810d9e37-826d-4035-a579-53f6a5c1d11f",
    "Personal/_Illustration/_Styles": "4cf53b66-8f6f-439f-85f2-82ab254730d7",
    "Personal/_Illustration/_Styles/automotive style": "53b02215-d75f-4a8f-967e-40813046aae5",
    "Personal/_Illustration/_Styles/blueprint style": "81cdfd9c-a85a-4d68-a0f5-8f7e9ef07321",
    "Personal/_Illustration/_Styles/motorcycle style": "f9c4876c-49b1-4704-aa2b-9d8b9aaa1cdb",
    "Personal/_Illustration/animal": "d7cbddd9-b960-4abd-8bb8-45c61f9a48ee",
    "Personal/_Illustration/architecture": "072533bd-50d7-4337-bcdf-d1c0e19b04a7",
    "Personal/_Illustration/automotive": "a33defd0-7adf-499a-8953-1b24503bbca0",
    "Personal/_Illustration/graphic design": "557757e9-18db-4b03-98c1-d8bca76d42b5",
    "Personal/_Illustration/landscape": "c8f35bbb-067e-4304-adb1-d7f31f09676e",
    "Personal/_Illustration/objects": "9abb9caf-20df-451d-9fa5-64b5fc179cae",
    "Personal/_Illustration/people": "7967ada7-041a-421d-9f01-2ae7b5179924",
    "Personal/_Illustration/poster illustrations": "72657ba6-a39b-4693-9584-10774abffc7a",
    "Personal/_Illustration/typography": "42730b96-9cf4-4312-99ff-9628643d4c97",
    "Personal/_work": "a2ff6f82-e119-45ed-9947-e40c098c064a",
    "Personal/automotive": "91c31d31-5e02-436b-aef9-ad56ea5d00ce",
    "Personal/automotive/___SORT": "275221c9-2a25-477f-95cb-41b481742c46",
    "Personal/automotive/___SORT/vans": "8fa2cff4-f156-44af-9fdb-9a0f3e34de02",
    "Personal/automotive/_blueprint": "df62c464-c0b2-42fe-bf3d-23a93bb6075b",
    "Personal/automotive/_motorcycle design": "15663ec0-5fa0-44a1-aab0-21e47878adc5",
    "Personal/automotive/_other vehicles": "3345254c-0158-4f0f-8a17-322912b23e62",
    "Personal/automotive/_series": "adb1d895-3de1-4479-9d94-80d8206cc9ff",
    "Personal/automotive/_series/color studio": "b7f16ca6-ff48-4c59-a1cc-7a2cffeb891e",
    "Personal/automotive/_series/dust studio": "8aa1fee0-56a3-4e5e-8bea-bae476abd106",
    "Personal/automotive/_series/lost studio": "bb2bacb9-6c0e-4baa-931f-edc9938793f4",
    "Personal/automotive/_series/mud studio": "281617d7-5d80-48d9-9938-e82fe37f5e4a",
    "Personal/automotive/_series/production studio": "0e083434-fb71-4d6b-9816-7a367140bcd6",
    "Personal/automotive/_series/rust studio": "daa1452e-ea10-4a92-90b8-5cf9bdece2fe",
    "Personal/automotive/_series/type studio": "57ea9437-0509-4065-a279-34f42617339a",
    "Personal/automotive/_series/white dirt studio": "e4b0c2cc-69ef-4d8d-9a13-456937719326",
    "Personal/automotive/_series/white studio": "08388b57-2bd3-4e47-ad98-6cb72f2c27dc",
    "Personal/automotive/architecture": "6feb93d1-a0cf-4ca9-bb9e-dfb19ea365f8",
    "Personal/automotive/backdrop": "0bb685c2-e840-433e-bf02-0b8852bd856c",
    "Personal/automotive/camper": "4037c0d3-3e9d-4891-9f94-e2fcfb656678",
    "Personal/automotive/car design": "12759a7c-8002-4d0c-9aee-ed0eff96bffb",
    "Personal/automotive/fashion": "79cbfc36-066a-4471-b978-acff39648f7d",
    "Personal/automotive/garage": "f6887944-8897-459f-a38a-374937374d7e",
    "Personal/automotive/lost and found": "69de7b75-01e2-4a53-8956-f5d1b593b111",
    "Personal/automotive/outdoor": "6cb58151-df06-4ae9-8af7-58dc98f620a3",
    "Personal/automotive/racetrack": "60d2b383-f869-4f96-8d03-cc3638fa11c4",
    "Personal/automotive/studio": "12775cc6-bde0-442b-8102-3bdc363ea517",
    "Personal/prompts": "d6ab6738-40cc-4dbf-ad7a-37d4a4f1777a",
    "referenzbilder": "382adbe9-4cb0-4e39-9443-eb00b439bae8",
    "referenzbilder/cybertruck grafitti": "c2056abf-8c72-452c-933b-00a17e2d94a5",
    "referenzbilder/vorlagen bilder": "320be743-6961-43f0-aebb-20ee79a49a6e",
    "archiv": "431b90dc-75f3-46e4-97e0-abe55b9e3e4e",
    "archiv/fotografie": "1e63c931-e8e7-4569-adad-e278dae7b235",
    "archiv/fotografie/android": "5d1df394-783e-41e6-bef3-0ec1ff755d6d",
    "archiv/fotografie/animals": "6c1f0604-bb52-449d-91a5-cd292038c098",
    "archiv/fotografie/architecture": "2edfd10b-d853-49ec-8571-9ce039170bb2",
    "archiv/fotografie/automotive": "5f16c19d-9447-4f07-9cb1-54872fefcd3d",
    "archiv/fotografie/objects": "38013c03-1e0b-4d8b-9ad0-db4cf52a15e6",
    "archiv/fotografie/people": "22b7b31e-f2b5-41bf-8e08-b4f6e8a6152a",
    "archiv/fotografie/surreal": "663b54d1-1953-43f5-b1d8-b3590fe13aad",
    "archiv/illustration": "25501dde-f919-4a43-860a-23f45b8b8e76",
    "archiv/illustration/animals": "d6da71a7-067e-4f79-bccc-fcfebd980aa4",
    "archiv/illustration/architecture": "98485d8e-42ef-44b2-9c5c-81a6f85f8160",
    "archiv/illustration/automotive": "8f2cd122-2975-4c28-99e5-093ec44e6bfd",
    "archiv/illustration/graphic design": "e3703a82-a309-4df6-a098-b2fccfeead64",
    "archiv/illustration/human": "cd70c89a-7abf-4021-b637-6bae01571a7f",
    "archiv/illustration/objects": "f9157d0b-1a19-4247-aeab-08ee2b1434d6",
    "automotive series": "7315b4df-d55a-4c88-9fe7-381fcc14391c",
    "automotive series/1948 Porsche 911": "95594e3d-54cb-4f0f-a43b-53e628505f1d",
    "automotive series/1948 Porsche 911/garage": "21678020-c437-49d2-a914-50b1baa66b4d",
    "automotive series/1948 Porsche 911/illustration": "e9c50197-6af9-4f21-9e6b-f3ed2b3ea609",
    "automotive series/1948 Porsche 911/landscape": "e1186a83-11cc-4546-889d-eb634bb332d6",
    "automotive series/1948 Porsche 911/lost and found": "0ca9cfa1-0f76-4aaf-9c2a-54f368b7f80d",
    "automotive series/1948 Porsche 911/racing": "6fe0a89e-0990-4f1f-87af-18c6f6885195",
    "automotive series/1948 Porsche 911/reference images": "35779d7b-ce65-4022-a1af-f80c0530aafb",
    "automotive series/1948 Porsche 911/studio": "c68b3729-6572-4b93-bd9e-fb6798f5c808",
    "automotive series/1958 MB 300 SL": "604abc09-ee28-4e82-a7a2-96f2509ac1cf",
    "automotive series/1958 MB 300 SL/illustration": "ec76dbc5-d545-47d6-b159-2ec2ae7255f1",
    "automotive series/1958 MB 300 SL/racing": "9c9d7713-91bf-4264-9a77-75d223fd0cb4",
    "automotive series/1958 MB 300 SL/reference images": "a4680df5-36b7-4e0c-8ca2-d8b6f572a799",
    "automotive series/1961 citroen ami 6": "cbfde587-6656-4e01-9697-988e4d27fd63",
    "automotive series/1961 citroen ami 6/reference images": "2ba257e0-4f80-4011-9465-f493337c44ca",
    "automotive series/1963 Ferrari 250 GT Lusso": "edaf2629-4d4d-479e-9d54-6379fc62a8b4",
    "automotive series/1963 Ferrari 250 GT Lusso/architecture": "10a666be-cfa2-4647-bdab-48f443ab4109",
    "automotive series/1963 Ferrari 250 GT Lusso/fashion": "99ee17fc-917f-414e-adca-ee7225f208f3",
    "automotive series/1963 Ferrari 250 GT Lusso/garage": "efb8ac7a-d517-47d2-8975-6da84ca3836f",
    "automotive series/1963 Ferrari 250 GT Lusso/illustrationen": "b6c582b8-05ba-4464-8ca4-d6bcb613b5b5",
    "automotive series/1963 Ferrari 250 GT Lusso/landscape": "57123a7a-dfd6-4854-95d0-a056d4f23351",
    "automotive series/1963 Ferrari 250 GT Lusso/lost and found": "99366e57-8b53-45e2-9902-e3c61436ff9e",
    "automotive series/1963 Ferrari 250 GT Lusso/racing": "fb4b1016-09f2-4105-bdb1-e66ea0d1953c",
    "automotive series/1963 Ferrari 250 GT Lusso/referenzen": "4d6b200a-711e-4823-abf4-71ab022fb73a",
    "automotive series/1963 Ferrari 250 GT Lusso/studio": "27ce83ac-413c-46f2-9242-d375c81580be",
    "automotive series/1963 Ferrari 250 GT Lusso/urban": "44560a79-f9a0-45dc-b5e7-1792913ee8b5",
    "automotive series/1963 MB 220 SEB Heckflosse Limousine W111": "22341e14-c48d-4db9-ba2e-36098f33be37",
    "automotive series/1963 MB 220 SEB Heckflosse Limousine W111/referenzen": "ad573300-0991-4713-b3c2-2b52d3266193",
    "automotive series/1964 Aston Martin DB5 Shooting Brake": "0abd1f07-4bb6-46b0-9d0a-49d2e84b442e",
    "automotive series/1964 Aston Martin DB5 Shooting Brake/lost and found": "4e86d4a8-830c-459b-8310-1b1c549e7924",
    "automotive series/1964 Aston Martin DB5 Shooting Brake/referenzen": "e55de4db-cf1d-4219-a503-de39881914e0",
    "automotive series/1965 Iso Grifo A3/C": "a352880b-c78e-418c-82ec-721eba164ecb",
    "automotive series/1965 Iso Grifo A3-C/architecture": "2f52743f-b125-48e8-9701-544972d4fc24",
    "automotive series/1965 Iso Grifo A3-C/landscape": "2a9e3069-98d6-440c-91ab-1100428fa4ee",
    "automotive series/1965 Iso Grifo A3-C/lost and found": "f45351af-e58f-4bc4-bb94-ec1956f7ef84",
    "automotive series/1965 Iso Grifo A3-C/racing": "1324b1e2-3de0-47dc-ac08-90930801a143",
    "automotive series/1965 Iso Grifo A3-C/reference images": "f1167b46-d8ea-4978-9c96-dadf9355cd4f",
    "automotive series/1965 Iso Grifo A3-C/studio": "fbf75a61-8558-4cc4-8bfc-01b114376555",
    "automotive series/1965 Iso Grifo A3-C/urban": "837d86e0-1ef4-42c9-a0fc-3ef94cdd7e3a",
    "automotive series/1965 FERRARI 275 GTB": "658d6422-588a-4134-a9f9-98ba3b7b0b26",
    "automotive series/1965 FERRARI 275 GTB/lost and found": "90a541bc-29e1-40ce-9f6c-9b7a6569634b",
    "automotive series/1965 FERRARI 275 GTB/referenzen": "eac7d558-bd1b-4df6-9719-8447b326259e",
    "automotive series/1966 Porsche 911 Vasaek": "175a056e-3ca0-4e12-a998-2a4d0a4e6d39",
    "automotive series/1966 Porsche 911 Vasaek/architecture": "1c324cdf-19db-4c98-b88e-02df326ee749",
    "automotive series/1966 Porsche 911 Vasaek/garage": "82611729-afc0-41fa-a77e-4e3cb24baf8e",
    "automotive series/1966 Porsche 911 Vasaek/landscape": "707aa674-cd39-463d-b7bb-504c241d5c47",
    "automotive series/1966 Porsche 911 Vasaek/racing": "dad1338d-225a-4498-adda-c1b075624293",
    "automotive series/1966 Porsche 911 Vasaek/reference images": "a2f60763-f744-4faa-b043-fc805e090cbb",
    "automotive series/1966 Porsche 911 Vasaek/studio": "cd3cad90-3a17-4b55-b83d-aab148ea0e7c",
    "automotive series/1966 Porsche 911 Vasaek/urban": "796dd69c-3d9b-485a-a2a3-f2e5066131b2",
    "automotive series/1967 Plymoth GTX": "f5cea75b-d6e4-453d-a51f-f9e5d579ea00",
    "automotive series/1967 Plymoth GTX/referenzen": "d4b1f8d2-dc18-4b47-a7db-750bd3e4699c",
    "automotive series/1968 Cadillac Eldorado Helldorado": "c2158219-93e7-4810-8ee8-e5ba3936687b",
    "automotive series/1968 Cadillac Eldorado Helldorado/illustration": "6c10b43f-4521-4ef7-8f90-11dfd46c15f1",
    "automotive series/1968 Cadillac Eldorado Helldorado/landscape": "1266293a-41cf-467b-be9b-9963b48717cf",
    "automotive series/1968 Cadillac Eldorado Helldorado/lost and found": "5c3f7c3b-4c2d-471a-8b78-9cb5926ebf72",
    "automotive series/1968 Cadillac Eldorado Helldorado/reference images": "2e3f3ff6-f130-42ea-8a77-fb78261bf263",
    "automotive series/1968 Cadillac Eldorado Helldorado/studio": "3321188c-4248-4de8-a6b6-2101ae77957b",
    "automotive series/1968 Cadillac Eldorado Helldorado/urban": "de91b867-f7d8-4034-b9cd-d9d5b041bc23",
    "automotive series/1968 Ferrari Dino": "7c4311f5-cdf0-4dcd-b372-b06cfb26d041",
    "automotive series/1968 Ferrari Dino/landscape": "a7d77653-277e-4d87-8a49-a517cdc6ee34",
    "automotive series/1968 Ferrari Dino/lost and found": "50019502-9173-47fc-9cb4-d3bc768d30f6",
    "automotive series/1968 Ferrari Dino/racing": "6fdff629-768d-4c6b-9ab7-57b4af70e339",
    "automotive series/1968 Ferrari Dino/reference images": "c54fa252-f71c-450c-bbc6-9096b1730145",
    "automotive series/1968 Ferrari Dino/studio": "23fda0ca-157e-40bd-88f7-657669139c74",
    "automotive series/1968 Ferrari Dino/urban": "30a63452-5832-402f-8a53-342a2b4e45b6",
    "automotive series/1968 Lamborghini Espada": "695aa1ac-dd15-4d4e-aeeb-9786d6c9bddc",
    "automotive series/1968 Lamborghini Espada/landscape": "d4e02301-1866-4c91-b259-b9a1ef0e5247",
    "automotive series/1968 Lamborghini Espada/referenzen": "470c0d49-ea8e-459e-87f8-17aec63c5d5a",
    "automotive series/1968 Lamborghini Espada/studio": "8036e3a2-9685-40f6-a11f-fbd8b175d6d5",
    "automotive series/1968 Lamborghini Espada/urban": "9986a8e9-a725-46ca-824d-f7d2c0a43fae",
    "automotive series/1968 Porsche 908 LH": "befe2201-da5a-4831-a177-3b4a9afad4e6",
    "automotive series/1968 Porsche 908 LH/garage": "73dbbd30-81a8-4fe6-9a56-b9619bba250c",
    "automotive series/1968 Porsche 908 LH/landscape": "0b31a309-0ded-4803-9fa5-c20ee8c33e22",
    "automotive series/1968 Porsche 908 LH/lost and found": "ed7a97fb-560c-40a2-a4f6-03b274760c76",
    "automotive series/1968 Porsche 908 LH/racing": "006c1d36-f725-4b03-804d-645d7d958159",
    "automotive series/1968 Porsche 908 LH/referenzen": "0381e138-aeab-4627-8ddc-61b4561cad07",
    "automotive series/1968 Porsche 908 LH/studio": "0f748470-f92d-4332-8419-111fdbbc3b04",
    "automotive series/1968 Porsche 908 LH/urban": "4cc24e55-50b7-4f20-af59-132b0277f357",
    "automotive series/1968 Porsche CN 908-010": "44aa7b90-1fe6-4a50-85bc-8aefb92dddb7",
    "automotive series/1968 Porsche CN 908-010/landscape": "ced7d318-2c20-4d0d-9fa6-c3c04c0d92a2",
    "automotive series/1968 Porsche CN 908-010/reference images": "2a71f235-4da6-4621-9e84-430cde7d2767",
    "automotive series/1970 Alfa Romeo Montral": "6a74ee3e-bb1c-4d03-8e7d-1c5f2ad5cda1",
    "automotive series/1970 Alfa Romeo Montral/architecture": "366a350d-893d-4c9f-b547-7694e8594e8b",
    "automotive series/1970 Alfa Romeo Montral/fashion": "cc5e851c-79a6-46fd-b10a-16831ccf4ac6",
    "automotive series/1970 Alfa Romeo Montral/garage": "a7e2df18-ed22-4bfa-9915-dc592f8d3049",
    "automotive series/1970 Alfa Romeo Montral/illustration": "2ac9347d-e217-49d4-8d97-827509944fdc",
    "automotive series/1970 Alfa Romeo Montral/landscape": "1955db78-29c8-41f6-bb04-fb7475dc77b2",
    "automotive series/1970 Alfa Romeo Montral/lost and found": "b060f911-757b-4a45-83ee-c000c91335bf",
    "automotive series/1970 Alfa Romeo Montral/redesign": "ecf9b205-0305-4ef2-ac4a-13994ae1d7ee",
    "automotive series/1970 Alfa Romeo Montral/referenzen": "a57c8764-a162-4aed-989b-dadbce4364f8",
    "automotive series/1970 Alfa Romeo Montral/studio": "0539b142-cfda-47ac-a556-d6bcf0d217c4",
    "automotive series/1970 Alfa Romeo Montral/urban": "dd831386-8496-4027-be47-3ac0804b3148",
    "automotive series/1970 Lancia Stratos HF Zero": "048075b3-7d92-442f-bc14-027619ba754a",
    "automotive series/1970 Lancia Stratos HF Zero/architecture": "fd8cc5ae-d204-4ea1-bbad-a3f908b5f411",
    "automotive series/1970 Lancia Stratos HF Zero/illustration": "5e7e1eac-8c48-42c4-92be-75cbdc648bf6",
    "automotive series/1970 Lancia Stratos HF Zero/landscape": "4408e239-4843-4d14-9a78-495563299933",
    "automotive series/1970 Lancia Stratos HF Zero/lost and found": "0ece15e2-bbaf-4bc1-9882-7e4ea269fd74",
    "automotive series/1970 Lancia Stratos HF Zero/racing": "f8c20eba-5178-4c82-9a6a-12df99fd56d7",
    "automotive series/1970 Lancia Stratos HF Zero/reference images": "097f952f-3d5a-4acf-8cf3-060836760f76",
    "automotive series/1970 Lancia Stratos HF Zero/studio": "fb7e4337-798d-4072-8263-3c20fc051a02",
    "automotive series/1970 Lancia Stratos HF Zero/urban": "e21341f0-fd7e-4bbd-a268-e4e148844176",
    "automotive series/1970 Porsche 917-023 KH": "2993d2fe-3920-428e-801f-3e15e4e7b981",
    "automotive series/1970 Porsche 917-023 KH/studio": "dc602a49-4b31-457b-96f5-614ac89d1c87",
    "automotive series/1970-2019 BMW Garmisch": "8430be5d-7203-40dd-8c93-1b8e8795a528",
    "automotive series/1970-2019 BMW Garmisch/architecture": "2444e5ed-c9d8-42d8-b29e-65934d8730c6",
    "automotive series/1970-2019 BMW Garmisch/landscape": "b0697d75-c613-4679-96b3-7f1e6b463730",
    "automotive series/1970-2019 BMW Garmisch/reference images": "65635146-7bf4-4b40-8ece-16d39e1cdb6f",
    "automotive series/1970-2019 BMW Garmisch/urban": "818b2cbc-9ddb-4d3c-a088-d6da4781a96b",
    "automotive series/1971 Datsun 240Z": "55c98c6e-2679-46bd-8472-3cf3f011973a",
    "automotive series/1971 Porsche 917K Martini Racing No 22": "6cb3c51e-468f-470c-9823-d9be881759d7",
    "automotive series/1971 Porsche 917K Martini Racing No 22/architecture": "ef779e23-5281-44b6-8056-091f6f0957e7",
    "automotive series/1971 Porsche 917K Martini Racing No 22/reference images": "a22b6b87-989f-48f1-9035-c62a91988eb1",
    "automotive series/1972 BMW CS 3.0i": "11c203c1-67d3-4628-81ca-846c41b8c138",
    "automotive series/1972 BMW CS 3.0i/decals": "69a3f178-3195-42a2-8570-2e1c9c29fbf8",
    "automotive series/1972 De Tomaso Pantera GTS": "4658148e-40a8-4da0-9412-92b3ecdfdf95",
    "automotive series/1972 De Tomaso Pantera GTS/illustration": "a2823c4a-5803-4e53-a2d8-2485c0463b77",
    "automotive series/1972 De Tomaso Pantera GTS/references": "fdcaf948-24ab-43ee-945c-73dc4d3e0e22",
    "automotive series/1972 De Tomaso Pantera GTS/studio": "f99c7b47-0bf5-48ff-b404-2e9dd0bb5649",
    "automotive series/1972 Opel GT-E": "c70cccfe-f48f-4470-a794-37067b428d15",
    "automotive series/1972 Opel GT-E/architecture": "f3fdca53-5859-4cb7-af39-e61b97a2ebc3",
    "automotive series/1972 Opel GT-E/fashion": "fb04609a-6b5e-42cc-9de9-bc47cdc9b946",
    "automotive series/1972 Opel GT-E/garage": "ff5d3280-2170-40ed-9999-e7eb31a6fe6c",
    "automotive series/1972 Opel GT-E/landscape": "09d8d824-c775-4496-8116-13a89e279249",
    "automotive series/1972 Opel GT-E/lost and found": "c223d30d-f9a7-45ea-a658-811da2a9d855",
    "automotive series/1972 Opel GT-E/racing": "59225e45-41f5-40c0-abbd-cf980b8ab6c1",
    "automotive series/1972 Opel GT-E/reference images": "1b9d1271-97b5-4a16-99c0-a893cd13ea17",
    "automotive series/1972 Opel GT-E/studio": "df610db2-da0d-40ca-ac6b-acd99d7c4c1f",
    "automotive series/1972 Opel GT-E/urban": "3e218961-5e25-4d9a-acea-e53109ee134f",
    "automotive series/1973 BMW 2002 ti": "79cfc94b-280a-4e32-8ca4-7f498b77cf3b",
    "automotive series/1973 BMW 2002 ti/racing": "3a3b2c06-4b89-4348-87da-caed6ffb5303",
    "automotive series/1973 BMW 2002 ti/reference images": "1ea6118d-9321-4864-9e4d-85d200daa8ad",
    "automotive series/1973 Jensen Interceptor III": "bda89764-5c99-4739-96b0-d45f671d606a",
    "automotive series/1973 Jensen Interceptor III/illustration": "f33e2ba0-1756-4554-8688-e93a6bf247f6",
    "automotive series/1973 Jensen Interceptor III/illustrationen": "cbcb5723-df11-4ace-a63b-5645eb5a094b",
    "automotive series/1973 Jensen Interceptor III/landscape": "1210aa45-a199-4ff2-a375-57840334908f",
    "automotive series/1973 Jensen Interceptor III/lost and found": "870e42f0-491d-43c6-b65a-76fd2d4f2e3d",
    "automotive series/1973 Jensen Interceptor III/referenzen": "c116f9c4-8283-47a6-835b-a2050ac1c996",
    "automotive series/1973 Jensen Interceptor III/studio": "fe346e00-886f-4fdb-a2bb-963c650cb052",
    "automotive series/1973 Jensen Interceptor III/urban": "4f4540ca-0af2-44af-b457-e3e713d5de7b",
    "automotive series/1973 Porsche 911 Carrera RSR": "38c03120-3a13-40c3-9603-268e2a495503",
    "automotive series/1973 Porsche 911 Carrera RSR/garage": "54c7bada-8e4f-486b-844a-4739aabc2425",
    "automotive series/1973 Porsche 911 Carrera RSR/illustrationen": "13fca8a2-1dc0-4649-9ae3-a6edf7ba63c1",
    "automotive series/1973 Porsche 911 Carrera RSR/landscape": "989bd2d2-62de-40c6-bd64-1e3ff4030ad1",
    "automotive series/1973 Porsche 911 Carrera RSR/lost and found": "36c3edc8-8e94-42e0-a8bd-a901115294b3",
    "automotive series/1973 Porsche 911 Carrera RSR/racing": "69541ec4-0387-4cc5-bfde-ba1db51cf4c0",
    "automotive series/1973 Porsche 911 Carrera RSR/reference images": "1aba7c24-6e89-461e-8286-3f3a4b7d46f2",
    "automotive series/1973 Porsche 911 Carrera RSR/urban": "d3c16b61-747a-428a-8b6e-9319eb7b968d",
    "automotive series/1978 BMW M1": "c294369f-b850-4efd-9811-7ac0c8eee12c",
    "automotive series/1978 BMW M1/architecture": "572cd5c7-aa52-40ca-9225-5eea6a1655bb",
    "automotive series/1978 BMW M1/fashion": "5de3e9aa-9bb3-4b7f-bf92-2b79b3266780",
    "automotive series/1978 BMW M1/studio": "1385423a-0cca-4cdf-8fdb-0d3467c311db",
    "automotive series/1985 porsche 956": "1e117481-883e-43d9-baee-2cd56a29b1ab",
    "automotive series/2023 Tesla TRK": "0d25d04d-283b-41d4-8f73-3b984c2a6a94",
    "automotive series/2023 Tesla TRK/illustrationen": "a74597b2-5629-4f45-8381-aedeed1189ad",
}

# ─── Keychain ────────────────────────────────────────────────
def ks_get(service):
    try:
        r = subprocess.run(["security", "find-generic-password", "-s", service, "-w"],
                           capture_output=True, text=True)
        return r.stdout.strip() if r.returncode == 0 else None
    except FileNotFoundError:
        return None

def ks_set(service, value):
    try:
        subprocess.run(["security", "delete-generic-password", "-s", service],
                       capture_output=True)
        subprocess.run(["security", "add-generic-password", "-s", service,
                        "-a", os.environ.get("USER", "magnific"), "-w", value],
                       capture_output=True, check=True)
        return True
    except (FileNotFoundError, subprocess.CalledProcessError):
        return False

def ks_delete(service):
    try:
        subprocess.run(["security", "delete-generic-password", "-s", service],
                       capture_output=True)
    except FileNotFoundError:
        pass

# ─── HTTP ────────────────────────────────────────────────────
def http_get_json(url, headers=None, timeout=30):
    req = urllib.request.Request(url, headers=headers or {})
    with urllib.request.urlopen(req, timeout=timeout) as resp:
        return json.loads(resp.read())

def http_post_form(url, data, timeout=30):
    body = urllib.parse.urlencode(data).encode()
    req = urllib.request.Request(url, data=body,
                                headers={"Content-Type": "application/x-www-form-urlencoded"})
    with urllib.request.urlopen(req, timeout=timeout) as resp:
        return json.loads(resp.read())

def http_post_json(url, data, headers=None, timeout=30):
    body = json.dumps(data).encode()
    h = {"Content-Type": "application/json"}
    if headers:
        h.update(headers)
    req = urllib.request.Request(url, data=body, headers=h)
    with urllib.request.urlopen(req, timeout=timeout) as resp:
        return json.loads(resp.read())

# ─── OAuth ───────────────────────────────────────────────────
def oauth_discover():
    return http_get_json(OAUTH_DISCOVERY)

def oauth_register(reg_endpoint):
    return http_post_json(reg_endpoint, {
        "client_name": "Magnific Batch Download",
        "redirect_uris": ["http://localhost/callback", "http://127.0.0.1/callback"],
        "grant_types": ["authorization_code", "refresh_token"],
        "response_types": ["code"],
        "token_endpoint_auth_method": "none",
        "application_type": "native",
        "scope": "openid profile email mcp:custom-audience",
    })

def oauth_refresh(token_endpoint, client_id, refresh_token):
    return http_post_form(token_endpoint, {
        "grant_type": "refresh_token",
        "refresh_token": refresh_token,
        "client_id": client_id,
    })

def oauth_pkce_flow(auth_endpoint, token_endpoint, client_id):
    verifier = secrets.token_urlsafe(43)
    challenge = base64.urlsafe_b64encode(
        hashlib.sha256(verifier.encode()).digest()
    ).rstrip(b"=").decode()
    state = secrets.token_urlsafe(16)

    auth_code = [None]
    received_state = [None]

    class Handler(http.server.BaseHTTPRequestHandler):
        def do_GET(self):
            params = urllib.parse.parse_qs(urllib.parse.urlparse(self.path).query)
            auth_code[0] = params.get("code", [None])[0]
            received_state[0] = params.get("state", [None])[0]
            self.send_response(200)
            self.send_header("Content-Type", "text/html; charset=utf-8")
            self.end_headers()
            self.wfile.write(b"<html><body><h2>Anmeldung erfolgreich!</h2>"
                             b"<p>Du kannst dieses Fenster schliessen.</p></body></html>")
        def log_message(self, *a):
            pass

    server = http.server.HTTPServer(("127.0.0.1", CALLBACK_PORT), Handler)
    thread = threading.Thread(target=server.handle_request, daemon=True)
    thread.start()

    redirect_uri = f"http://127.0.0.1:{CALLBACK_PORT}/callback"
    params = urllib.parse.urlencode({
        "response_type": "code",
        "client_id": client_id,
        "redirect_uri": redirect_uri,
        "code_challenge": challenge,
        "code_challenge_method": "S256",
        "state": state,
        "scope": "openid profile email mcp:custom-audience",
    })
    url = f"{auth_endpoint}?{params}"

    print(f"\n{Y}Browser oeffnet sich fuer Magnific-Anmeldung...{N}")
    print(f"Falls nicht, oeffne manuell:{N}")
    print(f"{C}{url}{N}\n")
    webbrowser.open(url)

    print("Warte auf Anmeldung (max. 2 Min.)...")
    thread.join(timeout=120)
    server.server_close()

    if not auth_code[0]:
        raise Exception("Anmeldung fehlgeschlagen oder Timeout.")
    if received_state[0] != state:
        raise Exception("OAuth State-Mismatch.")

    result = http_post_form(token_endpoint, {
        "grant_type": "authorization_code",
        "code": auth_code[0],
        "redirect_uri": redirect_uri,
        "code_verifier": verifier,
        "client_id": client_id,
    })
    return result

def authenticate():
    print("Authentifizierung...")
    discovery = oauth_discover()
    auth_ep = discovery["authorization_endpoint"]
    token_ep = discovery["token_endpoint"]
    reg_ep = discovery.get("registration_endpoint")

    client_id = ks_get(KS_CLIENT)
    if not client_id and reg_ep:
        reg = oauth_register(reg_ep)
        client_id = reg["client_id"]
        ks_set(KS_CLIENT, client_id)
        if reg.get("registration_access_token"):
            ks_set(KS_REG_TOKEN, reg["registration_access_token"])
        print(f"{G}OAuth-Client registriert.{N}")

    if not client_id:
        raise Exception("Kein OAuth Client-ID. Registration fehlgeschlagen.")

    refresh = ks_get(KS_REFRESH)
    if refresh:
        try:
            tokens = oauth_refresh(token_ep, client_id, refresh)
            if tokens.get("refresh_token"):
                ks_set(KS_REFRESH, tokens["refresh_token"])
            print(f"{G}Token erneuert.{N}")
            return tokens["access_token"]
        except Exception:
            print(f"{Y}Refresh fehlgeschlagen, neuer Login noetig.{N}")

    tokens = oauth_pkce_flow(auth_ep, token_ep, client_id)
    if tokens.get("refresh_token"):
        ks_set(KS_REFRESH, tokens["refresh_token"])
    print(f"{G}Anmeldung erfolgreich! Token im Schlüsselbund gespeichert.{N}")
    return tokens["access_token"]

# ─── MCP Client ──────────────────────────────────────────────
class MCP:
    def __init__(self, token):
        self.token = token
        self.sid = None
        self.rid = 0

    def initialize(self):
        r = self._rpc("initialize", {
            "protocolVersion": "2025-03-26",
            "capabilities": {},
            "clientInfo": {"name": "magnific-batch-download", "version": "1.0.0"},
        })
        self._notify("notifications/initialized")
        return r

    def tool(self, name, args):
        r = self._rpc("tools/call", {"name": name, "arguments": args})
        content = r.get("result", {}).get("content", [])
        return "\n".join(c.get("text", "") for c in content if c.get("type") == "text")

    def _rpc(self, method, params):
        self.rid += 1
        h = {
            "Content-Type": "application/json",
            "Accept": "application/json, text/event-stream",
            "Authorization": f"Bearer {self.token}",
        }
        if self.sid:
            h["Mcp-Session-Id"] = self.sid
        body = json.dumps({"jsonrpc": "2.0", "method": method, "params": params, "id": self.rid}).encode()
        req = urllib.request.Request(MCP_ENDPOINT, data=body, headers=h)
        with urllib.request.urlopen(req, timeout=60) as resp:
            sid = resp.headers.get("Mcp-Session-Id")
            if sid:
                self.sid = sid
            raw = resp.read().decode()
            ct = resp.headers.get("Content-Type", "")
            if "text/event-stream" in ct:
                for line in raw.split("\n"):
                    if line.startswith("data: "):
                        return json.loads(line[6:])
                return {}
            return json.loads(raw)

    def _notify(self, method):
        h = {"Content-Type": "application/json", "Authorization": f"Bearer {self.token}"}
        if self.sid:
            h["Mcp-Session-Id"] = self.sid
        body = json.dumps({"jsonrpc": "2.0", "method": method, "params": {}}).encode()
        req = urllib.request.Request(MCP_ENDPOINT, data=body, headers=h)
        try:
            urllib.request.urlopen(req, timeout=10)
        except Exception:
            pass

# ─── Response Parser ─────────────────────────────────────────
def parse_items(text):
    # Magnific liefert TOON-Tabellen:
    #   items[25]{identifier,prompt,tool}:
    #     mC0vwGRhJQ,"prompt mit, kommas",text-to-image
    #     ...
    #   pagination:
    #     ...
    # CSV-Parsing, weil Prompts Kommas enthalten (in Quotes geschuetzt).
    import csv
    items = []
    cols = None
    in_items = False
    for line in text.split("\n"):
        m = re.match(r'\s*items\[\d+\]\{([^}]*)\}\s*:\s*$', line)
        if m:
            cols = [c.strip() for c in m.group(1).split(",")]
            in_items = True
            continue
        if in_items:
            if line.startswith("  ") and line.strip():
                try:
                    fields = next(csv.reader([line.strip()]))
                except Exception:
                    continue
                items.append({cols[i]: (fields[i] if i < len(fields) else "")
                              for i in range(len(cols))})
            else:
                in_items = False
    return items

def parse_single(text):
    d = {}
    for line in text.split("\n"):
        m = re.match(r'\s*(\w[\w.]*)\s*:\s*(.+)', line.rstrip())
        if m:
            k, v = m.group(1), m.group(2).strip().strip('"')
            d[k] = v
    return d

# ─── Download ────────────────────────────────────────────────
def download_file(url, path):
    req = urllib.request.Request(url, headers={"User-Agent": "Magnific-Batch/1.0"})
    with urllib.request.urlopen(req, timeout=180) as resp:
        with open(path, "wb") as f:
            while True:
                chunk = resp.read(65536)
                if not chunk:
                    break
                f.write(chunk)

def write_exif(path, prompt, title):
    try:
        subprocess.run([
            "exiftool",
            f"-ImageDescription={prompt}",
            f"-Caption-Abstract={prompt}",
            f"-Description={prompt}",
            f"-Title={title}",
            f"-ObjectName={title}",
            "-overwrite_original", str(path),
        ], capture_output=True, timeout=30)
    except (FileNotFoundError, subprocess.TimeoutExpired):
        pass

# ─── History ─────────────────────────────────────────────────
def load_history():
    if HISTORY_FILE.exists():
        return set(HISTORY_FILE.read_text().strip().split("\n")) - {""}
    return set()

def save_id(identifier):
    with open(HISTORY_FILE, "a") as f:
        f.write(f"{identifier}\n")

# ─── Folder Download ─────────────────────────────────────────
def download_folder(mcp, path, ref, out, fmt, history):
    label = path.replace("/", "_").replace(" ", "-")
    local = out / path.replace(" ", "_")
    local.mkdir(parents=True, exist_ok=True)

    counter = 0
    for f in list(local.glob("*_Magnific_*.*")):
        m = re.search(r'_(\d{3})\.', f.name)
        if m:
            counter = max(counter, int(m.group(1)))

    dl = skip = 0
    page = 1

    while True:
        try:
            text = mcp.tool("creations_search", {
                "from": "folder", "reference": ref,
                "fileType": "image", "page": page,
            })
        except Exception as e:
            print(f"  {R}Suchfehler: {e}{N}")
            break

        items = parse_items(text)
        if not items:
            break

        for item in items:
            ident = item.get("identifier", "")
            if not ident:
                continue
            if ident in history:
                skip += 1
                continue

            try:
                detail = parse_single(mcp.tool("creations_get", {"creationIdentifier": ident}))
            except Exception as e:
                print(f"  {R}Detail-Fehler {ident}: {e}{N}")
                continue

            url = detail.get("url", "")
            prompt = detail.get("prompt", "")
            created = detail.get("createdAt", "")

            if not url:
                continue

            img_date = created[:10].replace("-", "") if created else datetime.now().strftime("%Y%m%d")
            counter += 1
            num = f"{counter:03d}"
            base = f"{img_date}_{label}_Magnific_{num}"

            if fmt in ("2", "3"):
                fp = local / f"{base}.png"
                print(f"  {G}↓{N} {path}/{base}.png {C}(neu){N}")
                try:
                    download_file(url, fp)
                    if prompt:
                        write_exif(fp, prompt, f"{label} {num}")
                except Exception as e:
                    print(f"  {R}Download-Fehler: {e}{N}")
                    continue

            if fmt in ("1", "3"):
                fp_jpg = local / f"{base}.jpg"
                print(f"  {G}↓{N} {path}/{base}.jpg {C}(neu){N}")
                try:
                    if fmt == "3" and (local / f"{base}.png").exists():
                        subprocess.run(["sips", "-s", "format", "jpeg",
                                        str(local / f"{base}.png"), "--out", str(fp_jpg)],
                                       capture_output=True)
                    else:
                        download_file(url, fp_jpg)
                    if prompt:
                        write_exif(fp_jpg, prompt, f"{label} {num}")
                except Exception as e:
                    print(f"  {R}Download-Fehler: {e}{N}")
                    continue

            history.add(ident)
            save_id(ident)
            dl += 1
            time.sleep(0.3)

        page += 1

    if dl > 0 or skip > 0:
        print(f"  {C}-> {dl} neu, {skip} uebersprungen{N}")
    else:
        print(f"  {C}(leer){N}")
    return dl, skip

# ─── Main ────────────────────────────────────────────────────
def main():
    print()
    print("+" + "=" * 40 + "+")
    print("|    Magnific Batch Download via MCP    |")
    print("+" + "=" * 40 + "+")
    print()

    # Dependencies
    try:
        subprocess.run(["exiftool", "-ver"], capture_output=True, check=True)
    except (FileNotFoundError, subprocess.CalledProcessError):
        print(f"{Y}exiftool fehlt.{N}")
        try:
            subprocess.run(["which", "brew"], capture_output=True, check=True)
            print("Installiere exiftool...")
            subprocess.run(["brew", "install", "exiftool"])
        except (FileNotFoundError, subprocess.CalledProcessError):
            print(f"{R}Bitte installiere: brew install exiftool{N}")
            input("\nDruecke Enter zum Beenden...")
            sys.exit(1)

    # Auth
    try:
        token = authenticate()
    except Exception as e:
        print(f"\n{R}Anmeldung fehlgeschlagen: {e}{N}")
        print(f"\nZum Zuruecksetzen:")
        print(f"  security delete-generic-password -s {KS_REFRESH}")
        print(f"  security delete-generic-password -s {KS_CLIENT}")
        input("\nDruecke Enter zum Beenden...")
        sys.exit(1)

    # MCP
    print("Verbinde mit Magnific MCP...")
    mcp = MCP(token)
    try:
        mcp.initialize()
        print(f"{G}MCP-Verbindung OK.{N}")
    except urllib.error.HTTPError as e:
        if e.code == 401:
            print(f"{R}Token abgelaufen. Loesche Token und starte neu.{N}")
            ks_delete(KS_REFRESH)
        else:
            print(f"{R}MCP-Fehler: {e}{N}")
        input("\nDruecke Enter zum Beenden...")
        sys.exit(1)
    except Exception as e:
        print(f"{R}MCP-Verbindung fehlgeschlagen: {e}{N}")
        input("\nDruecke Enter zum Beenden...")
        sys.exit(1)

    # Folder tree
    paths = sorted(FOLDERS.keys())
    print(f"\n{B}Verfuegbare Ordner:{N}")
    print(f"  {B}0) * ALLE Ordner{N}")
    for i, p in enumerate(paths, 1):
        depth = p.count("/")
        indent = "  " * depth
        name = p.rsplit("/", 1)[-1] if "/" in p else p
        print(f"  {i}) {indent}{name}")

    print()
    print(f"{C}Tipp: Nummer eingeben ODER Ordnernamen (Teil davon) tippen zum Suchen.{N}")

    def resolve_choice():
        while True:
            raw = input("Welchen Ordner? [0 = alle, Name oder Nr.]: ").strip()
            if raw == "" or raw == "0":
                return "ALL"
            if raw.isdigit():
                idx = int(raw) - 1
                if 0 <= idx < len(paths):
                    return paths[idx]
                print(f"  {R}Ungueltige Nummer.{N}")
                continue
            q = raw.lower()
            matches = [p for p in paths if q in p.lower()]
            if not matches:
                print(f"  {R}Kein Ordner enthaelt '{raw}'.{N}")
                continue
            if len(matches) == 1:
                return matches[0]
            print(f"  {Y}{len(matches)} Treffer:{N}")
            for i, p in enumerate(matches, 1):
                print(f"    {i}) {p}")
            sub = input("  Welcher? [Nr.]: ").strip()
            if sub.isdigit() and 1 <= int(sub) <= len(matches):
                return matches[int(sub) - 1]
            print(f"  {R}Ungueltig.{N}")

    base = resolve_choice()

    # Rekursiv: gewaehlter Ordner + alle Unterordner
    if base == "ALL":
        targets = paths
        selected = f"ALLE ({len(paths)} Ordner)"
    else:
        subs = [p for p in paths if p.startswith(base + "/")]
        targets = [base] + subs
        selected = f"{base}  (+ {len(subs)} Unterordner)" if subs else base

    # Output dir
    print()
    out = DEFAULT_OUTPUT
    try:
        r = subprocess.run(
            ["osascript", "-e",
             'set f to choose folder with prompt "Wo sollen die Magnific-Bilder gespeichert werden?"',
             "-e", "return POSIX path of f"],
            capture_output=True, text=True, timeout=60)
        if r.returncode == 0 and r.stdout.strip():
            out = Path(r.stdout.strip())
    except Exception:
        pass
    print(f"Zielordner: {out}")
    out.mkdir(parents=True, exist_ok=True)

    # Format
    print()
    print("Format:")
    print("  1) JPG")
    print("  2) PNG")
    print("  3) Beide (JPG + PNG)")
    fmt = input("Auswahl [2]: ").strip() or "2"

    fmt_name = {"1": "JPG", "2": "PNG", "3": "JPG + PNG"}.get(fmt, "PNG")

    print()
    print("=" * 42)
    print(f"  Ordner:     {selected}")
    print(f"  Zielordner: {out}")
    print(f"  Format:     {fmt_name}")
    print("=" * 42)
    print()

    history = load_history()
    total_dl = total_skip = 0

    for p in targets:
        print(f"{B}>> {p}{N}")
        d, s = download_folder(mcp, p, FOLDERS[p], out, fmt, history)
        total_dl += d
        total_skip += s
        print()

    print("=" * 42)
    if total_dl > 0:
        print(f"{G}{total_dl} neue Bilder heruntergeladen!{N}")
    else:
        print(f"{C}Keine neuen Bilder seit dem letzten Download.{N}")
    if total_skip > 0:
        print(f"{C}{total_skip} bereits vorhandene uebersprungen.{N}")
    print(f"Speicherort: {out}")
    print("=" * 42)

    if total_dl > 0:
        subprocess.run(["open", str(out)], capture_output=True)

    print()
    input("Druecke Enter zum Beenden...")

if __name__ == "__main__":
    main()
