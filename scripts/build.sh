#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"
VERSION="1.0.0-rc1"
mkdir -p dist
rm -f dist/*.zip dist/*.sha256 dist/SHA256SUMS.txt

(cd packages && zip -qr "../dist/altered-carbon-rpg-v${VERSION}.zip" altered-carbon-rpg)
(cd packages && zip -qr "../dist/cold-storage-v${VERSION}.zip" cold-storage)
# Runtime-sealed build: after GM-only import, install this variant before players join.
# It deliberately omits authoring JSON containing GM-only identity/agenda mappings.
(cd packages && zip -qr "../dist/cold-storage-sealed-v${VERSION}.zip" cold-storage -x 'cold-storage/content-src/*')
zip -qr "dist/altered-carbon-foundry-repo-v${VERSION}.zip" . -x '.git/*' 'dist/*' 'node_modules/*'

BUNDLE_DIR="$(mktemp -d)"
trap 'rm -rf "$BUNDLE_DIR"' EXIT
cp "dist/altered-carbon-rpg-v${VERSION}.zip" "$BUNDLE_DIR/"
cp "dist/cold-storage-v${VERSION}.zip" "$BUNDLE_DIR/"
cp "dist/cold-storage-sealed-v${VERSION}.zip" "$BUNDLE_DIR/"
(
  cd "$BUNDLE_DIR"
  sha256sum *.zip > SHA256SUMS.txt
  cat > INSTALL.txt <<TXT
Altered Carbon RPG + Cold Storage v${VERSION}

1. Extract altered-carbon-rpg-v${VERSION}.zip to Data/systems/altered-carbon-rpg/.
2. Extract cold-storage-v${VERSION}.zip to Data/modules/cold-storage/ for GM-only setup/import.
3. Restart Foundry VTT v14, create an Altered Carbon RPG world and enable Cold Storage.
4. Run Configure Settings -> Module Settings -> Cold Storage Setup with only the GM connected.
5. Select exactly six pregens and assign player ownership.
6. For strict raw-source secrecy, stop Foundry and replace the module with cold-storage-sealed-v${VERSION}.zip before players connect.

The 2020 Core Rulebook supplied by the owner is the primary mechanical authority. This private build includes source-derived rules-reference data but not the source PDF or official artwork. Do not redistribute licensed rules-reference content without the necessary rights.
TXT
  zip -qr "$ROOT/dist/altered-carbon-foundry-bundle-v${VERSION}.zip" .
)

(cd dist && sha256sum *.zip > SHA256SUMS.txt)
echo "Built Altered Carbon Foundry v${VERSION} packages in $ROOT/dist"
