#!/bin/bash

set -e
source ./.env

DEST="$(pwd)"

echo "Backing up keybindings and settings to $DEST"

read -n 1 -p "Proceed? (y/n): " res

if [[ "$res" != "y" ]]; then
    echo "Exiting..."
    exit 1
fi

cp -f "$CODE_USER_DIR/settings.json" "$DEST"
cp -f "$CODE_USER_DIR/keybindings.json" "$DEST"

echo "Backing up vscode extensions"
code --list-extensions >vs_code_extensions_list.txt
