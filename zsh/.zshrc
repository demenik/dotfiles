export ZDOTDIR=${$(readlink -f "${HOME}/.zshrc"):A:h}
export DOTFILES=${ZDOTDIR%/*}

export dev=${HOME}/Developer

export PATH=$HOME/.cargo/bin:$PATH
export RUSTC_WRAPPER=sccache

for conffile in $ZDOTDIR/rc/*; do
  source $conffile
done

unset conffile
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
