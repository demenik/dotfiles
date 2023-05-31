alias du="du -hc"

alias grep="grep --color=auto"
alias stmux="tmux new-session 'sudo -i'"
alias ls="exa --group-directories-first --color=auto --classify"
if (( ${+commands[colordiff]} )); then
    alias diff="colordiff --new-file --text --recursive -u --algorithm patience"
fi
alias cat="bat"

alias clear=" clear"
alias pwd=" pwd"
alias exit=" exit"

alias rm="rm -I"