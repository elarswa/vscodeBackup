#!/bin/bash

set -e
source ./.env

SRC="$(pwd)"
echo "Overwrite settings and keybindings from $SRC to $CODE_USER_DIR?"

read -n 1 -p "Proceed? (y/n): " res

if [[ "$res" != "y" ]]; then
    echo "Exiting..."
    exit 1
fi

echo -e "\nOverwriting keybindings and settings to $CODE_USER_DIR"

cp -f "$SRC/settings.json" "$CODE_USER_DIR/settings.json"
cp -f "$SRC/keybindings.json" "$CODE_USER_DIR/keybindings.json"
