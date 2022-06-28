#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f /etc/bash_completion ]; then
    /etc/bash_completion
fi

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
#echo "Shinzou Sasageyo"
#neofetch
#export GTK_IM_MODULE=ibus
#export XMODIFIERS=@im=ibus
#export QT_IM_MODULE=ibus
. "$HOME/.cargo/env"
eval "$(starship init bash)"
