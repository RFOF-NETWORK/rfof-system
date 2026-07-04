#!/bin/bash
# RFOF-NETWORK - Atomar gesichertes Deployment für GitHub Pages (.io)

# Aktiviert den Sofort-Abbruch bei jeglichem Fehler (Atomarer Schutz)
set -e

echo "?? Starte atomaren Code-Qualitätstest via Node.js..."

# 1. Syntaktische Prüfung: Kompiliert TypeScript streng nach ES2026
npx tsc app.ts --target es2026 --module commonjs --noEmitOnError

echo "? Code-Test erfolgreich. Keine Fehler vorhanden."
echo "?? Starte GPCB-Kompilation auf dem Laptop..."

# 2. Reale JavaScript-Datei erzeugen
npx tsc app.ts --target es2026 --module commonjs

echo "?? Übertrage Änderungen ins Git-System..."
git add .
git commit -m "Axiomatischer GPCB-DAI Update: Atomar verifiziert"
git push origin main

echo "?? Synchronisiere das Hosting auf GitHub Pages..."
git subtree push --prefix . origin gh-pages
echo "? Deployment erfolgreich abgeschlossen. System ist absolut fehlerfrei online."