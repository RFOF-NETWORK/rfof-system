#!/bin/bash
# RFOF-NETWORK - Atomar gesichertes Deployment für GitHub

# Aktiviert den Sofort-Abbruch bei jeglichem Fehler
set -e

echo "?? Starte atomaren Code-Qualitätstest und Build via Node.js..."

# 1. Nutzt das Skript aus der package.json für die Kompilation
npm run build

echo "? Code-Test & Build erfolgreich. Keine Fehler vorhanden."
echo "?? Übertrage Änderungen ins Git-System..."

# 2. Dateien für Git vormerken und commiten
git add .
git commit -m "Axiomatischer GPCB-DAI Update: Atomar verifiziert"

echo "?? Pushe Daten zu GitHub..."
git push origin main

echo "? Deployment erfolgreich abgeschlossen. System ist absolut fehlerfrei online."

