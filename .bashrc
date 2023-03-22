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
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export EDITOR=nvim
. "$HOME/.cargo/env"
eval "$(starship init bash)"
# alias ls=exa
alias pdf=zathura
alias vi=nvim
alias vim=nvim
export PATH="~/.local/bin:$PATH"
export PATH=$HOME/sys161/bin:$HOME/sys161/tools/bin:$PATH
