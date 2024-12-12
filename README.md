# VSCODE Back Up

This is a repo to save my user settings, key bindings and extensions as well as providing an easy way to reinstall on settings and extensions on a new machine.

First clone this repo to some directory on your machine.

If on your primary machine, update the .env to point to the location vscode stores its settings.json and keybindings.json. On Mac this is `/Users/<user>/Library/Application Support/Code/User`

##### Initial Setup

first update script permissions with:

    - `chmod u+x backup.sh`
    - `chmod u+x install_extensions.sh`
    - `chmod u+x overwrite_settings.sh`

#### Primary Machine

Run `bash backup.sh` this will copy settings and keybindings to this location, overwriting the files. This will also copy whatever extensions are installed.

#### New Machine

If you are on a new machine which you want to configure with the settings in this repo:

- install extensions with `bash install_extensions.sh`
- overwrite your machine settings and keybindings by:
  - update .env variable CODE_USER_DIR to point to where the User folder is under your installed vscode folder `Code`
  - run `bash overwrite_settings.sh`
