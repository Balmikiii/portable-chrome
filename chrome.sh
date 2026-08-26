#!/usr/bin/env bash

set -e

# Script ki current location
BASE_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

# USB par Chrome profile
PROFILE_DIR="$BASE_DIR/ChromeProfile"

# Profile folder create karo
mkdir -p "$PROFILE_DIR"

echo "USB location: $BASE_DIR"
echo "Chrome profile: $PROFILE_DIR"

# Chrome executable detect karo
if command -v google-chrome >/dev/null 2>&1; then
    CHROME="google-chrome"
elif command -v google-chrome-stable >/dev/null 2>&1; then
    CHROME="google-chrome-stable"
elif command -v chromium >/dev/null 2>&1; then
    CHROME="chromium"
elif command -v chromium-browser >/dev/null 2>&1; then
    CHROME="chromium-browser"
else
    echo "Chrome/Chromium installed nahi mila."
    exit 1
fi

echo "Browser: $CHROME"
echo "Starting..."

"$CHROME" \
    --user-data-dir="$PROFILE_DIR" \
    --no-first-run \
    --no-default-browser-check

echo "Browser closed."