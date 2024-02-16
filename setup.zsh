#!/usr/bin/env zsh

SCRIPT_DIR="${0:A:h}"

echo "Linking config files..."
ln -nfs $SCRIPT_DIR/zsh/.zshrc $HOME/.zshrc
ln -nfs $SCRIPT_DIR/config/.nvmrc $HOME/.nvmrc
ln -nfs $SCRIPT_DIR/config/.gitconfig $HOME/.gitconfig
echo "  ..done"

unset SCRIPT_DIR

if ! command -v cargo &> /dev/null
then
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi