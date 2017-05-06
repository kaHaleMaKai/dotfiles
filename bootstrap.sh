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

INFO install etckeeper, keepassx and curl
sudo apt install etckeeper keepassx curl

INFO install virtualenv and ansible dependencies
sudo apt install virtualenv libpython-dev openssl gcc g++ libssl-dev

INFO install ansible
virtualenv -p python2.7 "$ANSIBLE_DIR"
$ANSIBLE_DIR/bin/pip install ansible

INFO creating links for ansible under ~/bin
for src in $(ls $ANSIBLE_DIR/bin/ansible*); do
  name="$(basename "$src")"
  link="${BIN_DIR}/ansible/${name}"
  [[ -L "$link" ]] || ln -s -T "$src" "$link"
done

# create this file if not exists
# to have awesome start anyway
# (my-theme depends on it)

[[ -e "${HOME}/.background-image" ]] \
|| touch "${HOME}/.background-image"

# currently this missbehaves
# exit status != 0 even after successful installation
# execute twice to check if error is persistent

INFO install ansible requirements

~/bin/ansible/ansible-galaxy install -r requirements.yml \
|| ~/bin/ansible/ansible-galaxy install -r requirements.yml \
&& INFO successfully installed requiredments \
|| (ERROR failed to install requirements && exit 1)

~/bin/ansible/ansible-playbook site.yml -c local --ask-sudo --ask-vault-pass

# vim: set ft=sh
# vim: ft=sh
