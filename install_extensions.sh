#!/bin/bash

set -e
source ./.env

echo "Installing extensions from $EXTENSION_BACKUP"

read -n 1 -p "Proceed? (y/n): " res

if [[ "$res" != "y" ]]; then
    echo "Exiting..."
    exit 1
fi

echo -e "\nInstalling vscode extensions found in $EXTENSION_BACKUP"

cat "$EXTENSION_BACKUP" | xargs -n 1 code --install-extension
