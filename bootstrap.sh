#!/bin/bash
set -euo pipefail

BIN_DIR="${HOME}/bin"
GIT_DIR="${HOME}/git"
VENV_DIR="${HOME}/venvs"
ANSIBLE_DIR="${VENV_DIR}/ansible"

log() {
  local level="${1^^}"
  shift
  echo "[$(date '+%F %T')] ${level} $@" >&2
}

INFO() {
  log info "$@"
}

ERROR() {
  log error "$@"
}

WARN() {
  log warn "$@"
}

INFO creating directories
mkdir -p "$GIT_DIR"
mkdir -p "$VENV_DIR"
mkdir -p "$BIN_DIR"
mkdir -p "${BIN_DIR}/ansible"

INFO install virtualenv
sudo apt install virtualenv

INFO install ansible
virtualenv -p python2.7 "$ANSIBLE_DIR"
$ANSIBLE_DIR/bin/pip install ansible

INFO creating links for ansible under ~/bin
for src in $(ls $ANSIBLE_DIR/bin/ansible*); do
  name="$(basename "$src")"
  link="${BIN_DIR}/ansible/${name}"
  [[ -L "$link" ]] || ln -s -T "$src"
done


# vim: set ft=sh
# vim: ft=sh
