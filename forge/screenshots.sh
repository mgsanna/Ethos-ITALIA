#!/usr/bin/env bash

set -e

cd "$(dirname "$0")"

ETHOS='/mnt/c/Program Files (x86)/FrSky/Ethos'

"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --no-gui --radio-settings ./x20s-it.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/system-menu.lua
"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --no-gui --radio-settings ./x20s-it.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-menu.lua
"${ETHOS}/X20PRO/simulator.exe" --read-only --no-audio --no-gui --radio-settings ./x20pro-it.bin --sd-directory ./sd --flash-directory ./flash --radio-directory ./sd --exec ./macros/x20pro.lua
"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --no-gui --radio-settings ./x20s-it.bin --exec ./macros/mainview.lua
"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --no-gui --radio-settings ./x20s-it.bin --exec ./macros/user-interface.lua
"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --no-gui --radio-settings ./x20s-it.bin --exec ./macros/toolbars.lua
