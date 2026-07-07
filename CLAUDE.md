# Magnific Image Download Workflow

## Overview
This repo manages batch downloads of images from Magnific (magnific.com) via MCP tools.
Images are downloaded to `~/Downloads/magnific/` on the user's local Mac.

## File Structure
- `manifest.json` — Tracks all downloaded collections, image IDs, folder mappings, and Magnific references
- `download_*.sh` — Collection-specific download scripts (curl commands with presigned URLs)
- `download.sh` — Smart wrapper that runs all download scripts, skipping already-downloaded files
- `Magnific-Batch-Download-MCP.command` — Generic Mac app for batch downloading ALL Magnific collections
- `Flora-Batch-Download.command` — Generic Mac app for batch downloading Flora collections

## MCP-Voraussetzung

Der Magnific MCP muss eingerichtet sein:
```
claude mcp add --transport http magnific https://mcp.magnific.com
```

## Magnific Ordner-Referenzen

WICHTIG: Nutze diese Referenzen direkt — NICHT erst alle Ordner durchsuchen!
Wenn der User einen Ordner nennt, schlage hier die Reference nach und rufe `creations_search` direkt auf.

### Projekte (Top-Level)

| Ordner | Reference |
|---|---|
| automotive | `4f6c78c9-e886-4b61-bf14-4003b9269607` |
| illustration | `1ac2ef8d-f2b5-445b-acd5-4e88a85287fc` |
| fotografie | `f69337be-a009-418d-aa9f-cca2131cec92` |
| optimierung | `bd9413a4-bfd2-44d5-aba6-8dc61a301046` |
| referenzbilder | `382adbe9-4cb0-4e39-9443-eb00b439bae8` |
| Spaces | `88c1b57f-616d-46de-81b2-4f881771e28f` |
| Personal | `039d51f4-439b-463b-a899-342c80380e00` |

### automotive/ Unterordner

| Ordner | Reference |
|---|---|
| automotive/architecture | `6feb93d1-a0cf-4ca9-bb9e-dfb19ea365f8` |
| automotive/camper and vans | `4037c0d3-3e9d-4891-9f94-e2fcfb656678` |
| automotive/car design | `12cad7d7-1576-4aa3-a951-4993e9057579` |
| automotive/design | `5b960212-60e9-4d95-be73-1f03770e74f8` |
| automotive/fashion | `79cbfc36-066a-4471-b978-acff39648f7d` |
| automotive/garage | `f6887944-8897-459f-a38a-374937374d7e` |
| automotive/landscape | `6cb58151-df06-4ae9-8af7-58dc98f620a3` |
| automotive/lost and found | `69de7b75-01e2-4a53-8956-f5d1b593b111` |
| automotive/racetrack | `60d2b383-f869-4f96-8d03-cc3638fa11c4` |
| automotive/series cars | `abc03c6d-5ae2-48fe-81f0-90cd6e7cf141` |
| automotive/series white space | `adb1d895-3de1-4479-9d94-80d8206cc9ff` |
| automotive/studio | `12775cc6-bde0-442b-8102-3bdc363ea517` |
| automotive/urban | `215988a8-7fcc-41c2-b686-00fc0572ae12` |
| automotive/xx_SORT | `91c31d31-5e02-436b-aef9-ad56ea5d00ce` |

### automotive/series cars/ Unterordner

| Ordner | Reference |
|---|---|
| automotive/series cars/1948 Porsche 911 | `95594e3d-54cb-4f0f-a43b-53e628505f1d` |
| automotive/series cars/1948 Porsche 911/garage | `21678020-c437-49d2-a914-50b1baa66b4d` |
| automotive/series cars/1948 Porsche 911/illustration | `e9c50197-6af9-4f21-9e6b-f3ed2b3ea609` |
| automotive/series cars/1948 Porsche 911/landscape | `e1186a83-11cc-4546-889d-eb634bb332d6` |
| automotive/series cars/1948 Porsche 911/lost and found | `0ca9cfa1-0f76-4aaf-9c2a-54f368b7f80d` |
| automotive/series cars/1948 Porsche 911/racing | `6fe0a89e-0990-4f1f-87af-18c6f6885195` |
| automotive/series cars/1948 Porsche 911/reference images | `35779d7b-ce65-4022-a1af-f80c0530aafb` |
| automotive/series cars/1948 Porsche 911/studio | `c68b3729-6572-4b93-bd9e-fb6798f5c808` |
| automotive/series cars/1958 MB 300 SL | `604abc09-ee28-4e82-a7a2-96f2509ac1cf` |
| automotive/series cars/1958 MB 300 SL/illustration | `ec76dbc5-d545-47d6-b159-2ec2ae7255f1` |
| automotive/series cars/1958 MB 300 SL/racing | `9c9d7713-91bf-4264-9a77-75d223fd0cb4` |
| automotive/series cars/1958 MB 300 SL/reference images | `a4680df5-36b7-4e0c-8ca2-d8b6f572a799` |
| automotive/series cars/1958 MB 300 SL/studio | `dfc19264-67a1-4fef-918b-6af8fa72c29e` |
| automotive/series cars/1958 MB 300 SL/urban | `fd8ee00a-24d7-4b8c-a106-52e8dd30dbef` |
| automotive/series cars/1961 citroen ami 6 | `cbfde587-6656-4e01-9697-988e4d27fd63` |
| automotive/series cars/1961 citroen ami 6/reference images | `2ba257e0-4f80-4011-9465-f493337c44ca` |
| automotive/series cars/1963 Ferrari 250 GT Lusso | `edaf2629-4d4d-479e-9d54-6379fc62a8b4` |
| automotive/series cars/1963 Ferrari 250 GT Lusso/architecture | `10a666be-cfa2-4647-bdab-48f443ab4109` |
| automotive/series cars/1963 Ferrari 250 GT Lusso/fashion | `99ee17fc-917f-414e-adca-ee7225f208f3` |
| automotive/series cars/1963 Ferrari 250 GT Lusso/garage | `efb8ac7a-d517-47d2-8975-6da84ca3836f` |
| automotive/series cars/1963 Ferrari 250 GT Lusso/illustrationen | `b6c582b8-05ba-4464-8ca4-d6bcb613b5b5` |
| automotive/series cars/1963 Ferrari 250 GT Lusso/landscape | `57123a7a-dfd6-4854-95d0-a056d4f23351` |
| automotive/series cars/1963 Ferrari 250 GT Lusso/lost and found | `99366e57-8b53-45e2-9902-e3c61436ff9e` |
| automotive/series cars/1963 Ferrari 250 GT Lusso/racing | `fb4b1016-09f2-4105-bdb1-e66ea0d1953c` |
| automotive/series cars/1963 Ferrari 250 GT Lusso/referenzen | `4d6b200a-711e-4823-abf4-71ab022fb73a` |
| automotive/series cars/1963 Ferrari 250 GT Lusso/studio | `27ce83ac-413c-46f2-9242-d375c81580be` |
| automotive/series cars/1963 Ferrari 250 GT Lusso/urban | `44560a79-f9a0-45dc-b5e7-1792913ee8b5` |
| automotive/series cars/1963 MB 220 SEB Heckflosse Limousine W111 | `22341e14-c48d-4db9-ba2e-36098f33be37` |
| automotive/series cars/1963 MB 220 SEB Heckflosse Limousine W111/referenzen | `ad573300-0991-4713-b3c2-2b52d3266193` |
| automotive/series cars/1964 Aston Martin DB5 Shooting Brake | `0abd1f07-4bb6-46b0-9d0a-49d2e84b442e` |
| automotive/series cars/1964 Aston Martin DB5 Shooting Brake/lost and found | `4e86d4a8-830c-459b-8310-1b1c549e7924` |
| automotive/series cars/1964 Aston Martin DB5 Shooting Brake/referenzen | `e55de4db-cf1d-4219-a503-de39881914e0` |
| automotive/series cars/1964 Aston Martin DB5 Shooting Brake/studio | `af549ca6-a1f3-453d-9287-61ac1ab16f72` |
| automotive/series cars/1965 Iso Grifo A3/C | `a352880b-c78e-418c-82ec-721eba164ecb` |
| automotive/series cars/1965 Iso Grifo A3-C/architecture | `2f52743f-b125-48e8-9701-544972d4fc24` |
| automotive/series cars/1965 Iso Grifo A3-C/landscape | `2a9e3069-98d6-440c-91ab-1100428fa4ee` |
| automotive/series cars/1965 Iso Grifo A3-C/lost and found | `f45351af-e58f-4bc4-bb94-ec1956f7ef84` |
| automotive/series cars/1965 Iso Grifo A3-C/racing | `1324b1e2-3de0-47dc-ac08-90930801a143` |
| automotive/series cars/1965 Iso Grifo A3-C/reference images | `f1167b46-d8ea-4978-9c96-dadf9355cd4f` |
| automotive/series cars/1965 Iso Grifo A3-C/studio | `fbf75a61-8558-4cc4-8bfc-01b114376555` |
| automotive/series cars/1965 Iso Grifo A3-C/urban | `837d86e0-1ef4-42c9-a0fc-3ef94cdd7e3a` |
| automotive/series cars/1965 FERRARI 275 GTB - 08013 | `658d6422-588a-4134-a9f9-98ba3b7b0b26` |
| automotive/series cars/1965 FERRARI 275 GTB/lost and found | `90a541bc-29e1-40ce-9f6c-9b7a6569634b` |
| automotive/series cars/1965 FERRARI 275 GTB/referenzen | `eac7d558-bd1b-4df6-9719-8447b326259e` |
| automotive/series cars/1966 Porsche 911 Vasaek | `175a056e-3ca0-4e12-a998-2a4d0a4e6d39` |
| automotive/series cars/1966 Porsche 911 Vasaek/architecture | `1c324cdf-19db-4c98-b88e-02df326ee749` |
| automotive/series cars/1966 Porsche 911 Vasaek/garage | `82611729-afc0-41fa-a77e-4e3cb24baf8e` |
| automotive/series cars/1966 Porsche 911 Vasaek/landscape | `707aa674-cd39-463d-b7bb-504c241d5c47` |
| automotive/series cars/1966 Porsche 911 Vasaek/racing | `dad1338d-225a-4498-adda-c1b075624293` |
| automotive/series cars/1966 Porsche 911 Vasaek/reference images | `a2f60763-f744-4faa-b043-fc805e090cbb` |
| automotive/series cars/1966 Porsche 911 Vasaek/studio | `cd3cad90-3a17-4b55-b83d-aab148ea0e7c` |
| automotive/series cars/1966 Porsche 911 Vasaek/urban | `796dd69c-3d9b-485a-a2a3-f2e5066131b2` |
| automotive/series cars/1967 Plymoth GTX | `f5cea75b-d6e4-453d-a51f-f9e5d579ea00` |
| automotive/series cars/1967 Plymoth GTX/referenzen | `d4b1f8d2-dc18-4b47-a7db-750bd3e4699c` |
| automotive/series cars/1968 Cadillac Eldorado Helldorado | `c2158219-93e7-4810-8ee8-e5ba3936687b` |
| automotive/series cars/1968 Cadillac Eldorado Helldorado/illustration | `6c10b43f-4521-4ef7-8f90-11dfd46c15f1` |
| automotive/series cars/1968 Cadillac Eldorado Helldorado/landscape | `1266293a-41cf-467b-be9b-9963b48717cf` |
| automotive/series cars/1968 Cadillac Eldorado Helldorado/lost and found | `5c3f7c3b-4c2d-471a-8b78-9cb5926ebf72` |
| automotive/series cars/1968 Cadillac Eldorado Helldorado/reference images | `2e3f3ff6-f130-42ea-8a77-fb78261bf263` |
| automotive/series cars/1968 Cadillac Eldorado Helldorado/studio | `3321188c-4248-4de8-a6b6-2101ae77957b` |
| automotive/series cars/1968 Cadillac Eldorado Helldorado/urban | `de91b867-f7d8-4034-b9cd-d9d5b041bc23` |
| automotive/series cars/1968 Ferrari Dino | `7c4311f5-cdf0-4dcd-b372-b06cfb26d041` |
| automotive/series cars/1968 Ferrari Dino/landscape | `a7d77653-277e-4d87-8a49-a517cdc6ee34` |
| automotive/series cars/1968 Ferrari Dino/lost and found | `50019502-9173-47fc-9cb4-d3bc768d30f6` |
| automotive/series cars/1968 Ferrari Dino/racing | `6fdff629-768d-4c6b-9ab7-57b4af70e339` |
| automotive/series cars/1968 Ferrari Dino/reference images | `c54fa252-f71c-450c-bbc6-9096b1730145` |
| automotive/series cars/1968 Ferrari Dino/studio | `23fda0ca-157e-40bd-88f7-657669139c74` |
| automotive/series cars/1968 Ferrari Dino/urban | `30a63452-5832-402f-8a53-342a2b4e45b6` |
| automotive/series cars/1968 Lamborghini Espada | `695aa1ac-dd15-4d4e-aeeb-9786d6c9bddc` |
| automotive/series cars/1968 Lamborghini Espada/landscape | `d4e02301-1866-4c91-b259-b9a1ef0e5247` |
| automotive/series cars/1968 Lamborghini Espada/referenzen | `470c0d49-ea8e-459e-87f8-17aec63c5d5a` |
| automotive/series cars/1968 Lamborghini Espada/studio | `8036e3a2-9685-40f6-a11f-fbd8b175d6d5` |
| automotive/series cars/1968 Lamborghini Espada/urban | `9986a8e9-a725-46ca-824d-f7d2c0a43fae` |
| automotive/series cars/1968 Porsche 908 LH | `befe2201-da5a-4831-a177-3b4a9afad4e6` |
| automotive/series cars/1968 Porsche 908 LH/garage | `73dbbd30-81a8-4fe6-9a56-b9619bba250c` |
| automotive/series cars/1968 Porsche 908 LH/landscape | `0b31a309-0ded-4803-9fa5-c20ee8c33e22` |
| automotive/series cars/1968 Porsche 908 LH/lost and found | `ed7a97fb-560c-40a2-a4f6-03b274760c76` |
| automotive/series cars/1968 Porsche 908 LH/racing | `006c1d36-f725-4b03-804d-645d7d958159` |
| automotive/series cars/1968 Porsche 908 LH/referenzen | `0381e138-aeab-4627-8ddc-61b4561cad07` |
| automotive/series cars/1968 Porsche 908 LH/studio | `0f748470-f92d-4332-8419-111fdbbc3b04` |
| automotive/series cars/1968 Porsche 908 LH/urban | `4cc24e55-50b7-4f20-af59-132b0277f357` |
| automotive/series cars/1968 Porsche CN 908-010 | `44aa7b90-1fe6-4a50-85bc-8aefb92dddb7` |
| automotive/series cars/1968 Porsche CN 908-010/landscape | `ced7d318-2c20-4d0d-9fa6-c3c04c0d92a2` |
| automotive/series cars/1968 Porsche CN 908-010/reference images | `2a71f235-4da6-4621-9e84-430cde7d2767` |
| automotive/series cars/1970 Alfa Romeo Montral | `6a74ee3e-bb1c-4d03-8e7d-1c5f2ad5cda1` |
| automotive/series cars/1970 Alfa Romeo Montral/architecture | `366a350d-893d-4c9f-b547-7694e8594e8b` |
| automotive/series cars/1970 Alfa Romeo Montral/fashion | `cc5e851c-79a6-46fd-b10a-16831ccf4ac6` |
| automotive/series cars/1970 Alfa Romeo Montral/garage | `a7e2df18-ed22-4bfa-9915-dc592f8d3049` |
| automotive/series cars/1970 Alfa Romeo Montral/illustration | `2ac9347d-e217-49d4-8d97-827509944fdc` |
| automotive/series cars/1970 Alfa Romeo Montral/landscape | `1955db78-29c8-41f6-bb04-fb7475dc77b2` |
| automotive/series cars/1970 Alfa Romeo Montral/lost and found | `b060f911-757b-4a45-83ee-c000c91335bf` |
| automotive/series cars/1970 Alfa Romeo Montral/redesign | `ecf9b205-0305-4ef2-ac4a-13994ae1d7ee` |
| automotive/series cars/1970 Alfa Romeo Montral/referenzen | `a57c8764-a162-4aed-989b-dadbce4364f8` |
| automotive/series cars/1970 Alfa Romeo Montral/studio | `0539b142-cfda-47ac-a556-d6bcf0d217c4` |
| automotive/series cars/1970 Alfa Romeo Montral/urban | `dd831386-8496-4027-be47-3ac0804b3148` |
| automotive/series cars/1970 Lancia Stratos HF Zero | `048075b3-7d92-442f-bc14-027619ba754a` |
| automotive/series cars/1970 Lancia Stratos HF Zero/architecture | `fd8cc5ae-d204-4ea1-bbad-a3f908b5f411` |
| automotive/series cars/1970 Lancia Stratos HF Zero/illustration | `5e7e1eac-8c48-42c4-92be-75cbdc648bf6` |
| automotive/series cars/1970 Lancia Stratos HF Zero/landscape | `4408e239-4843-4d14-9a78-495563299933` |
| automotive/series cars/1970 Lancia Stratos HF Zero/lost and found | `0ece15e2-bbaf-4bc1-9882-7e4ea269fd74` |
| automotive/series cars/1970 Lancia Stratos HF Zero/racing | `f8c20eba-5178-4c82-9a6a-12df99fd56d7` |
| automotive/series cars/1970 Lancia Stratos HF Zero/reference images | `097f952f-3d5a-4acf-8cf3-060836760f76` |
| automotive/series cars/1970 Lancia Stratos HF Zero/studio | `fb7e4337-798d-4072-8263-3c20fc051a02` |
| automotive/series cars/1970 Lancia Stratos HF Zero/urban | `e21341f0-fd7e-4bbd-a268-e4e148844176` |
| automotive/series cars/1970 Porsche 917-023 KH | `2993d2fe-3920-428e-801f-3e15e4e7b981` |
| automotive/series cars/1970 Porsche 917-023 KH/studio | `dc602a49-4b31-457b-96f5-614ac89d1c87` |
| automotive/series cars/1970/2019 BMW Garmisch | `8430be5d-7203-40dd-8c93-1b8e8795a528` |
| automotive/series cars/1970-2019 BMW Garmisch/architecture | `2444e5ed-c9d8-42d8-b29e-65934d8730c6` |
| automotive/series cars/1970-2019 BMW Garmisch/landscape | `b0697d75-c613-4679-96b3-7f1e6b463730` |
| automotive/series cars/1970-2019 BMW Garmisch/reference images | `65635146-7bf4-4b40-8ece-16d39e1cdb6f` |
| automotive/series cars/1970-2019 BMW Garmisch/urban | `818b2cbc-9ddb-4d3c-a088-d6da4781a96b` |
| automotive/series cars/1971 Datsun 240Z | `55c98c6e-2679-46bd-8472-3cf3f011973a` |
| automotive/series cars/1971 Porsche 917K (Martini Racing Livery, No. 22) | `6cb3c51e-468f-470c-9823-d9be881759d7` |
| automotive/series cars/1971 Porsche 917K Martini Racing No 22/architecture | `ef779e23-5281-44b6-8056-091f6f0957e7` |
| automotive/series cars/1971 Porsche 917K Martini Racing No 22/reference images | `a22b6b87-989f-48f1-9035-c62a91988eb1` |
| automotive/series cars/1972 BMW CS 3.0i | `11c203c1-67d3-4628-81ca-846c41b8c138` |
| automotive/series cars/1972 BMW CS 3.0i/decals | `69a3f178-3195-42a2-8570-2e1c9c29fbf8` |
| automotive/series cars/1972 De Tomaso Pantera GTS | `4658148e-40a8-4da0-9412-92b3ecdfdf95` |
| automotive/series cars/1972 De Tomaso Pantera GTS/illustration | `a2823c4a-5803-4e53-a2d8-2485c0463b77` |
| automotive/series cars/1972 De Tomaso Pantera GTS/references | `fdcaf948-24ab-43ee-945c-73dc4d3e0e22` |
| automotive/series cars/1972 De Tomaso Pantera GTS/studio | `f99c7b47-0bf5-48ff-b404-2e9dd0bb5649` |
| automotive/series cars/1972 Opel GT-E | `c70cccfe-f48f-4470-a794-37067b428d15` |
| automotive/series cars/1972 Opel GT-E/architecture | `f3fdca53-5859-4cb7-af39-e61b97a2ebc3` |
| automotive/series cars/1972 Opel GT-E/fashion | `fb04609a-6b5e-42cc-9de9-bc47cdc9b946` |
| automotive/series cars/1972 Opel GT-E/garage | `ff5d3280-2170-40ed-9999-e7eb31a6fe6c` |
| automotive/series cars/1972 Opel GT-E/landscape | `09d8d824-c775-4496-8116-13a89e279249` |
| automotive/series cars/1972 Opel GT-E/lost and found | `c223d30d-f9a7-45ea-a658-811da2a9d855` |
| automotive/series cars/1972 Opel GT-E/racing | `59225e45-41f5-40c0-abbd-cf980b8ab6c1` |
| automotive/series cars/1972 Opel GT-E/reference images | `1b9d1271-97b5-4a16-99c0-a893cd13ea17` |
| automotive/series cars/1972 Opel GT-E/studio | `df610db2-da0d-40ca-ac6b-acd99d7c4c1f` |
| automotive/series cars/1972 Opel GT-E/urban | `3e218961-5e25-4d9a-acea-e53109ee134f` |
| automotive/series cars/1973 BMW 2002 ti | `79cfc94b-280a-4e32-8ca4-7f498b77cf3b` |
| automotive/series cars/1973 BMW 2002 ti/racing | `3a3b2c06-4b89-4348-87da-caed6ffb5303` |
| automotive/series cars/1973 BMW 2002 ti/reference images | `1ea6118d-9321-4864-9e4d-85d200daa8ad` |
| automotive/series cars/1973 Jensen Interceptor III - 7.2L V8 | `bda89764-5c99-4739-96b0-d45f671d606a` |
| automotive/series cars/1973 Jensen Interceptor III/illustration | `f33e2ba0-1756-4554-8688-e93a6bf247f6` |
| automotive/series cars/1973 Jensen Interceptor III/illustrationen | `cbcb5723-df11-4ace-a63b-5645eb5a094b` |
| automotive/series cars/1973 Jensen Interceptor III/landscape | `1210aa45-a199-4ff2-a375-57840334908f` |
| automotive/series cars/1973 Jensen Interceptor III/lost and found | `870e42f0-491d-43c6-b65a-76fd2d4f2e3d` |
| automotive/series cars/1973 Jensen Interceptor III/referenzen | `c116f9c4-8283-47a6-835b-a2050ac1c996` |
| automotive/series cars/1973 Jensen Interceptor III/studio | `fe346e00-886f-4fdb-a2bb-963c650cb052` |
| automotive/series cars/1973 Jensen Interceptor III/urban | `4f4540ca-0af2-44af-b457-e3e713d5de7b` |
| automotive/series cars/1973 Porsche 911 Carrera RSR (Garrard Racing) (1) | `38c03120-3a13-40c3-9603-268e2a495503` |
| automotive/series cars/1973 Porsche 911 Carrera RSR/garage | `54c7bada-8e4f-486b-844a-4739aabc2425` |
| automotive/series cars/1973 Porsche 911 Carrera RSR/illustrationen | `13fca8a2-1dc0-4649-9ae3-a6edf7ba63c1` |
| automotive/series cars/1973 Porsche 911 Carrera RSR/landscape | `989bd2d2-62de-40c6-bd64-1e3ff4030ad1` |
| automotive/series cars/1973 Porsche 911 Carrera RSR/lost and found | `36c3edc8-8e94-42e0-a8bd-a901115294b3` |
| automotive/series cars/1973 Porsche 911 Carrera RSR/racing | `69541ec4-0387-4cc5-bfde-ba1db51cf4c0` |
| automotive/series cars/1973 Porsche 911 Carrera RSR/reference images | `1aba7c24-6e89-461e-8286-3f3a4b7d46f2` |
| automotive/series cars/1973 Porsche 911 Carrera RSR/urban | `d3c16b61-747a-428a-8b6e-9319eb7b968d` |
| automotive/series cars/1978 BMW M1 | `c294369f-b850-4efd-9811-7ac0c8eee12c` |
| automotive/series cars/1978 BMW M1/architecture | `572cd5c7-aa52-40ca-9225-5eea6a1655bb` |
| automotive/series cars/1978 BMW M1/fashion | `5de3e9aa-9bb3-4b7f-bf92-2b79b3266780` |
| automotive/series cars/1978 BMW M1/studio | `1385423a-0cca-4cdf-8fdb-0d3467c311db` |
| automotive/series cars/1985 porsche 956 | `1e117481-883e-43d9-baee-2cd56a29b1ab` |
| automotive/series cars/2023 Tesla TRK | `0d25d04d-283b-41d4-8f73-3b984c2a6a94` |
| automotive/series cars/2023 Tesla TRK/illustrationen | `a74597b2-5629-4f45-8381-aedeed1189ad` |

### automotive/series white space/ Unterordner

| Ordner | Reference |
|---|---|
| automotive/series white space/color studio | `b7f16ca6-ff48-4c59-a1cc-7a2cffeb891e` |
| automotive/series white space/driver john classic racer | `9ba3f435-9f26-4099-b150-52858d1e318c` |
| automotive/series white space/dust studio | `8aa1fee0-56a3-4e5e-8bea-bae476abd106` |
| automotive/series white space/lost studio | `bb2bacb9-6c0e-4baa-931f-edc9938793f4` |
| automotive/series white space/mud studio | `281617d7-5d80-48d9-9938-e82fe37f5e4a` |
| automotive/series white space/production studio | `0e083434-fb71-4d6b-9816-7a367140bcd6` |
| automotive/series white space/rust studio | `daa1452e-ea10-4a92-90b8-5cf9bdece2fe` |
| automotive/series white space/type studio | `57ea9437-0509-4065-a279-34f42617339a` |
| automotive/series white space/white dirt studio | `e4b0c2cc-69ef-4d8d-9a13-456937719326` |
| automotive/series white space/white studio | `08388b57-2bd3-4e47-ad98-6cb72f2c27dc` |

### illustration/ Unterordner

| Ordner | Reference |
|---|---|
| illustration/_Styles | `4cf53b66-8f6f-439f-85f2-82ab254730d7` |
| illustration/animal | `d7cbddd9-b960-4abd-8bb8-45c61f9a48ee` |
| illustration/architecture | `072533bd-50d7-4337-bcdf-d1c0e19b04a7` |
| illustration/automotive | `a33defd0-7adf-499a-8953-1b24503bbca0` |
| illustration/graphic design | `557757e9-18db-4b03-98c1-d8bca76d42b5` |
| illustration/landscape | `c8f35bbb-067e-4304-adb1-d7f31f09676e` |
| illustration/objects | `9abb9caf-20df-451d-9fa5-64b5fc179cae` |
| illustration/people | `7967ada7-041a-421d-9f01-2ae7b5179924` |
| illustration/poster illustrations | `72657ba6-a39b-4693-9584-10774abffc7a` |
| illustration/xx_Sort | `810d9e37-826d-4035-a579-53f6a5c1d11f` |

### fotografie/ Unterordner

| Ordner | Reference |
|---|---|
| fotografie/android | `e0a575ba-0908-4a9e-88e2-ebd5430c7602` |
| fotografie/animal | `1e4ce39d-8b84-4482-8da3-db174b281bd8` |
| fotografie/architecture | `940cad53-b99f-45b0-85d5-18e048e08cc0` |
| fotografie/backdrop | `0bb685c2-e840-433e-bf02-0b8852bd856c` |
| fotografie/documentary | `d8d1d0f4-fa9b-4c0a-a002-a607243757e9` |
| fotografie/landscape | `8875734d-5d2c-4641-bab4-ecbf984543a3` |
| fotografie/objekte | `03d78808-8698-4d49-865c-349a9f72a0ed` |
| fotografie/people | `96c877ce-8232-4187-aabc-f7f60169e17f` |
| fotografie/surreal | `ea35e32e-4cce-4d19-82f2-ffd5e7346914` |
| fotografie/xx_SORT | `ef128f18-d7b6-4e3d-8697-35bac8ea82a4` |

### fotografie/documentary/ Unterordner

| Ordner | Reference |
|---|---|
| fotografie/documentary/1861 Yosemite Valley Carleton Watkins | `1e196dc0-335a-4921-919e-63d2694c4da4` |
| fotografie/documentary/1923 Berlin August Sander | `a40e5e24-6262-46a6-bb0c-2bdce1bedac6` |
| fotografie/documentary/1925 Alps | `c19326e3-fe2e-43c6-be20-da9e383161ff` |
| fotografie/documentary/1958 zeche zollverein Albert Renger-Patzsch | `7c1280c6-667c-4d93-bab7-65bdd4f1722b` |
| fotografie/documentary/1964 LNDN Brian Duffy | `bf1b3395-fb19-4734-8b5a-cce35a90b327` |
| fotografie/documentary/1968 Paris | `ce3b639a-cd0a-4dc1-9b90-55def6d2a0f6` |
| fotografie/documentary/1968 Shinjuku Daido Moriyama | `04f72f2d-7e40-4308-823c-bd7f271e3311` |
| fotografie/documentary/1969 Kuba Alex Webb | `7972f623-32f9-42a7-98b3-e869b591bfad` |
| fotografie/documentary/1984 Port-au-Prince Alex Webb | `74e40263-5492-4a05-baca-5564dadadaf0` |
| fotografie/documentary/1989 Dhanbad Coalmine | `23a3edc4-5979-4aeb-812b-6571770093c4` |
| fotografie/documentary/2006 YAK Nomads | `e39776fe-7d3c-445d-a587-3656a1a200f5` |
| fotografie/documentary/2010 Hazaribagh leather | `c7274ba0-fe95-4449-b210-db2d588e9666` |
| fotografie/documentary/2012 Chittagong shipwrecks | `1d4f3f71-a32c-4b27-9ebb-22c1a2a90b06` |
| fotografie/documentary/2024 india | `4845d443-9078-46eb-8d56-fdccaec76f0e` |
| fotografie/documentary/Alex Prager | `311c8aa0-f584-4890-9502-ccbe481ad5b7` |
| fotografie/documentary/Edward Burtynsky Industrial Themes | `eb64d5b9-daa8-46ca-b33d-ca3210bf8f2d` |

### optimierung/ Unterordner

| Ordner | Reference |
|---|---|
| optimierung/_SORT | `9850c3ad-9bae-4bb0-8d1d-77a7c3e6e4f8` |
| optimierung/architecture | `1608c003-0470-4c61-a414-821ec853913b` |
| optimierung/automotive | `24e48bc3-08a5-4f49-8e24-52510323d7f4` |
| optimierung/fashion | `208f29a8-caeb-43fe-917b-fb97ec0434b1` |
| optimierung/illustration | `de9ca350-c9ef-4f22-8799-e49385e42d72` |
| optimierung/landscape | `9a37839e-659e-4620-9a83-011303120bff` |
| optimierung/sport | `9926932f-0a73-4476-b236-f847a7eb76ea` |

### referenzbilder/ Unterordner

| Ordner | Reference |
|---|---|
| referenzbilder/blueprint | `df62c464-c0b2-42fe-bf3d-23a93bb6075b` |
| referenzbilder/cybertruck grafitti | `c2056abf-8c72-452c-933b-00a17e2d94a5` |
| referenzbilder/vorlagen bilder | `320be743-6961-43f0-aebb-20ee79a49a6e` |

### Spaces/ Unterordner

| Ordner | Reference |
|---|---|
| Spaces/1963 Mercedes-Benz 220 SEB Heckflosse Limousine W111 | `4ca6cc5b-0ffd-4f0d-84a8-609df8cbf4b6` |
| Spaces/1963 MB W111/architecture | `010f03f8-f41d-4a15-88e9-e9931a37fdcd` |
| Spaces/1963 MB W111/reference images | `74e7b88c-7636-4b5b-b89e-55e2d80b73f9` |
| Spaces/1963 MB W111/studio | `0996ed6f-1ff7-4665-8977-f907391f68ce` |
| Spaces/1963 MB W111/urban | `7b5c603b-dbf1-4372-8610-0b4e8fc1a64a` |
| Spaces/1967 Ferrari 330GTC | `5c1d909c-cd64-4a58-9d37-c55926213a2b` |
| Spaces/1967 Ferrari 330GTC/reference images | `bf853b7d-d5b6-4536-8800-bbe212ccac9e` |
| Spaces/1970 Porsche 917K | `72906fa5-fdc5-4fd1-800f-9847ae149510` |
| Spaces/1970 Porsche 917K/racing | `425a8b5a-246b-49e3-84c1-644cc0978674` |
| Spaces/1986 McLaren MP4/2C | `6147a134-0113-4546-8d55-529e06acc75e` |
| Spaces/1986 McLaren MP4-2C/racing | `772bcda5-ad70-4294-b5c9-f83a1477dcf5` |
| Spaces/1986 McLaren MP4-2C/reference images | `213c3010-e026-4d71-9d47-f57f4433ddc8` |
| Spaces/1991 McLaren MP4/6 Honda | `1cb7d2b7-a3d2-4b53-a744-d56bfe09bfc1` |
| Spaces/2026 racing mixed | `5091c8c3-91ad-45da-b0ca-cbe66efdf842` |
| Spaces/illustration | `92102a2e-8e9e-4a28-a118-ba0a40726fe0` |

### Personal/ Unterordner

| Ordner | Reference |
|---|---|
| Personal/__ideas | `a2ff6f82-e119-45ed-9947-e40c098c064a` |
| Personal/__ideas/prompts | `d6ab6738-40cc-4dbf-ad7a-37d4a4f1777a` |
| Personal/xx_SORT | `aca98a54-4bed-4738-b0dd-6bca35f379eb` |
| Personal/xx_SORT/_automotive | `275221c9-2a25-477f-95cb-41b481742c46` |
| Personal/xx_SORT/_automotive/_other vehicles | `3345254c-0158-4f0f-8a17-322912b23e62` |
| Personal/xx_SORT/_automotive/fashion | `63b8710d-30a6-4759-a60f-ab99b41e6aa5` |
| Personal/xx_SORT/_automotive/g klasse | `5181fd4e-a3df-41e1-9bd0-9f44157b17ae` |
| Personal/xx_SORT/_automotive/vans | `8fa2cff4-f156-44af-9fdb-9a0f3e34de02` |
| Personal/xx_SORT/illustration | `e28ad27a-91de-4826-a694-7c9b913c36c3` |

## Magnific Download Workflow

Wenn der User einen Ordner zum Download nennt:

### 1. Reference nachschlagen (NICHT suchen!)

Schlage den Ordnernamen oben in der Tabelle nach → nutze die Reference direkt.
Nur wenn der Ordner NICHT in der Tabelle steht, nutze `folders_list` um ihn zu finden.

### 2. Download-Ablauf

1. `creations_search` mit `from=folder`, `reference=<folder_ref>`, `fileType=image` — paginiert (alle Seiten!)
2. Für jede Creation: `creations_get` mit `creationIdentifier` → liefert `url` (Full-Res), `createdAt`, `metadata.prompt`
3. Prüfe History-Datei `~/.magnific-download-history` — überspringe bereits heruntergeladene IDs
4. Download per `curl -sL <url> -o <path>`
5. EXIF schreiben per `exiftool`
6. ID in History-Datei speichern

### 3. Dateinamen-Schema

```
YYYYMMDD_Ordnername_Magnific_001.png
```

- `YYYYMMDD` = Erstellungsdatum aus `createdAt` (NICHT Download-Datum)
- `Ordnername` = Ordnerpfad mit `_` statt `/`
- Fortlaufende Nummerierung pro Ordner

### 4. Ordnerstruktur spiegeln

Lokale Ordnerstruktur spiegelt die Magnific-Struktur:
```
~/Downloads/magnific/
  Spaces/
    2026_racing_mixed/
  Personal/
    _fotografie/
    _Illustration/
  automotive_series/
    1968_Ferrari_Dino/
```

Standard-Zielordner: `~/Downloads/magnific/` (User kann anderen Pfad nennen)

### 5. EXIF/IPTC Metadaten

Für Lightroom-Kompatibilität in jedes Bild schreiben:
```bash
exiftool \
  -ImageDescription="<prompt>" \
  -Caption-Abstract="<prompt>" \
  -Description="<prompt>" \
  -Title="<ordner> <nummer>" \
  -ObjectName="<ordner> <nummer>" \
  -overwrite_original "<datei>"
```

### 6. History-Tracking

- Datei: `~/.magnific-download-history`
- Enthält eine Magnific Creation-ID (`identifier`) pro Zeile
- Vor jedem Download prüfen: `grep -qF "$ID" ~/.magnific-download-history`
- Nach Download: `echo "$ID" >> ~/.magnific-download-history`
- Beim zweiten Lauf werden nur neue Bilder heruntergeladen

### 7. Format

Standard: PNG. User kann JPG oder beides wählen. Bei "beides" zuerst PNG laden, dann mit Python/sips nach JPG konvertieren.

## Beispiel-Interaktionen

User: "magnific download"
→ Ordner-Baumstruktur anzeigen (aus der Tabelle oben, KEIN API-Call nötig), User wählen lassen, dann downloaden

User: "lade alle neuen bilder aus Spaces/2026 racing mixed"
→ Reference `5091c8c3-91ad-45da-b0ca-cbe66efdf842` aus Tabelle → direkt `creations_search` → downloaden

User: "zeig mir meine magnific ordner"
→ Baumstruktur aus der Tabelle oben anzeigen, nichts downloaden, KEIN API-Call

User: "alles herunterladen nach ~/Pictures/magnific"
→ Alle Ordner aus der Tabelle durchgehen, alternativer Zielordner

## Important Notes
- `pikaso.cdnpk.net` (Magnific CDN) is **blocked** in Claude Code Remote — scripts must run on the user's local machine
- Presigned URLs expire (check `exp=` parameter in token)
- The user speaks German — respond in German
- Always preserve Magnific folder hierarchy in local directory structure

## Local Mac Usage
```bash
cd ~/desktop-tutorial
git pull
bash download.sh        # Downloads all new images, skips existing
# OR double-click Magnific-Batch-Download-MCP.command in Finder
```
