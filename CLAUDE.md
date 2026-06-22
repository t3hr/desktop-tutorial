# Magnific Batch Download (via MCP)

## MCP-Voraussetzung

Der Magnific MCP muss eingerichtet sein:
```
claude mcp add --transport http magnific https://mcp.magnific.com
```

## Magnific Download Workflow

Wenn der User nach einem Magnific-Download fragt ("magnific download", "bilder herunterladen", "neue bilder", "ordner laden", etc.):

### 1. Ordnerstruktur anzeigen

Nutze `folders_list` mit `onlyProjects=true` um die Top-Level-Projekte zu zeigen.
Dann `folders_list` mit `parentReference=<ref>` um Unterordner zu laden.
Zeige dem User die komplette Baumstruktur zur Auswahl.

### 2. Auswahl

Der User kann wählen:
- **Einzelner Ordner**: "nur Personal/_fotografie"
- **Mehrere Ordner**: "Personal/_work und automotive"
- **Ganzes Projekt**: "alles aus Personal"
- **Alles**: "alle Ordner"
- **Nur neue Bilder**: Standard — bereits heruntergeladene werden übersprungen

### 3. Download-Ablauf

Für jeden ausgewählten Ordner:

1. `creations_search` mit `from=folder`, `reference=<folder_ref>` — paginiert (alle Seiten durchgehen!)
2. Für jede Creation: `creations_get` mit `creationIdentifier` → liefert `url` (Full-Res), `createdAt`, `metadata.prompt`
3. Prüfe History-Datei `~/.magnific-download-history` — überspringe bereits heruntergeladene IDs
4. Download per `curl -sL <url> -o <path>`
5. EXIF schreiben per `exiftool`
6. ID in History-Datei speichern

### 4. Dateinamen-Schema

```
YYYYMMDD_Ordnername_Magnific_001.png
```

- `YYYYMMDD` = Erstellungsdatum aus `createdAt` (NICHT Download-Datum)
- `Ordnername` = Ordnerpfad mit `_` statt `/`
- Fortlaufende Nummerierung pro Ordner

### 5. Ordnerstruktur spiegeln

Lokale Ordnerstruktur spiegelt die Magnific-Struktur:
```
~/Downloads/magnific/
  Personal/
    _fotografie/
    _Illustration/
    _work/
  referenzbilder/
  archiv/
```

Standard-Zielordner: `~/Downloads/magnific/` (User kann anderen Pfad nennen)

### 6. EXIF/IPTC Metadaten

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

### 7. History-Tracking

- Datei: `~/.magnific-download-history`
- Enthält eine Magnific Creation-ID (`identifier`) pro Zeile
- Vor jedem Download prüfen: `grep -qF "$ID" ~/.magnific-download-history`
- Nach Download: `echo "$ID" >> ~/.magnific-download-history`
- Beim zweiten Lauf werden nur neue Bilder heruntergeladen

### 8. Format

Standard: PNG. User kann JPG oder beides wählen. Bei "beides" zuerst PNG laden, dann mit Python/sips nach JPG konvertieren.

## Beispiel-Interaktionen

User: "magnific download"
→ Ordner anzeigen, User wählen lassen, dann downloaden

User: "lade alle neuen bilder aus Personal/_fotografie"
→ Direkt diesen Ordner laden, nur neue

User: "zeig mir meine magnific ordner"
→ Nur Baumstruktur anzeigen, nichts downloaden

User: "alles herunterladen nach ~/Pictures/magnific"
→ Alle Ordner, alternativer Zielordner
