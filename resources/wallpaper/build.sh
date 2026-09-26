#!/usr/bin/env bash
# Rebuild the trenck.net desktop wallpaper (3072x1920, light + dark) and the
# macOS dynamic HEIC that switches with the system appearance.
# Needs Google Chrome and Xcode command line tools (swift). Fonts load from a
# sibling trenck.net clone (../trenck.net/fonts relative to this repo).
set -euo pipefail
here="$(cd "$(dirname "$0")" && pwd)"
out="$here/../../img/wallpapers"
chrome="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

for mode in light dark; do
  "$chrome" --headless=new --disable-gpu --allow-file-access-from-files \
    --hide-scrollbars --force-device-scale-factor=2 --window-size=1536,960 \
    --virtual-time-budget=3000 --screenshot="$out/trenck-net-$mode.png" \
    "file://$here/wallpaper.html#$mode" 2>/dev/null
done

swift "$here/mkdynamic.swift" "$out/trenck-net-light.png" "$out/trenck-net-dark.png" "$out/trenck-net-dynamic.heic"
