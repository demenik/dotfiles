#!/usr/bin/env zsh

SCRIPT_DIR="${0:A:h}"

echo "Linking config files..."
ln -nfs $SCRIPT_DIR/zsh/.zshrc $HOME/.zshrc
ln -nfs $SCRIPT_DIR/tmux/.tmux.conf $HOME/.tmux.conf
ln -nfs $SCRIPT_DIR/config/.nvmrc $HOME/.nvmrc
ln -nfs $SCRIPT_DIR/config/.gitconfig $HOME/.gitconfig
echo "  ..done"

unset SCRIPT_DIR