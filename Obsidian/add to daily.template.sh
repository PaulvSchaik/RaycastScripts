#!/bin/bash

# Note: Advanced Obsidian URI plugin required (obsidian://show-plugin?id=obsidian-advanced-uri)
# Install via: 1) https://obsidian.md 2) brew install --cask obsidian

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Daily log
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ./images/obsidian.png
# @raycast.argument1 { "type": "text", "placeholder": "Dagelijks log", "optional": false, "percentEncoded": true}
# @raycast.packageName Obsidian

# Documentation:
# @raycast.description Insert text at the top of the Daily page
# @raycast.author Paul van Schaik
# @raycast.authorURL https://github.com/PaulvSchaik

# The name of your vault, e.g., "Obsidian Vault"
VAULT_NAME=""
STAMP=$(date +"%H:%M")

if [ -z "$VAULT_NAME" ]
then
  echo "Configure VAULT_NAME"
  exit 1
fi

open "obsidian://advanced-uri?vault=$VAULT_NAME&daily=true&data=-%2520$STAMP%2520${1}&mode=prepend"
