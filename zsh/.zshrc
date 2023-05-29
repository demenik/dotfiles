export ZDOTDIR=${$(readlink -f "${HOME}/.zshrc"):A:h}
export DOTFILES=${ZDOTDIR%/*}

for conffile in $ZDOTDIR/rc/*; do
  source $conffile
done

unset conffile