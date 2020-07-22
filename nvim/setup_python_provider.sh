#!/usr/bin/env bash

set -e

ROOT_DIR=${XDG_DATA_HOME:-$HOME/.local}
TARGET_DIR="$ROOT_DIR/share/nvim/site/venv3"

python3 -m venv $TARGET_DIR
$TARGET_DIR/bin/pip install --upgrade pip wheel
$TARGET_DIR/bin/pip install --upgrade pynvim jedi pylint


