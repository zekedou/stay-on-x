#!/usr/bin/env bash

set -euo pipefail

echo "Current macOS version: $(sw_vers -productVersion)"
echo
echo "Profiles:"
sudo /usr/bin/profiles show -type configuration 2>/dev/null
echo
echo "Software Update pane (for reference only):"
defaults read /Library/Preferences/com.apple.SoftwareUpdate 2>/dev/null || true
