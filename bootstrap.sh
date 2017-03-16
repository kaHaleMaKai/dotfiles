#!/bin/bash
set -euo pipefail

GIT_DIR="~/git"
VENV_DIR="~/venvs"

mkdir "$GIT_DIR"
mkdir "$VENV_DIR"

sudo apt install virtualenv
virtualenv "${VENV_DIR}"

# vim: set ft=sh
# vim: ft=sh
