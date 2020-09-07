#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -p --color=auto --group-directories-first'
alias grep='grep --color=auto'
#         [USERNAME]              $
PS1='[\[\e[36m\]\u: \[\e[33m\]\w\[\e[0m\]] \[\e[92m\]\$\[\e[0m\] '

alias vi=vim

set -o vi

#if systemctl -q is-active graphical.target && [[! $DISPLAY && XDG_VTNR -eq 1 ]]; then
#	exec startx
#fi
