# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/Developer/.dotfiles/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZDOTDIR=${$(readlink -f "${HOME}/.zshrc"):A:h}
export DOTFILES=${ZDOTDIR%/*}

export dev=${HOME}/Developer

export PATH=$HOME/.cargo/bin:$PATH
export RUSTC_WRAPPER=sccache

for conffile in $ZDOTDIR/rc/*; do
  source $conffile
done

unset conffile