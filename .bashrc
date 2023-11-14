#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f /etc/bash_completion ]; then
    /etc/bash_completion
fi

PS1='[\u@\h \W]\$ '


source "$HOME/.cargo/env"
source /usr/share/fzf/completion.bash
source /usr/share/fzf/key-bindings.bash
# source /etc/profile.d/vte.sh
eval "$(starship init bash)"
eval "$(zoxide init bash)"

# alias ls=exa # exa slower...
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias nf=neofetch
alias cl=clear
alias pdf=zathura
alias vi=nvim
alias vim=nvim
alias cd=z
alias cat=bat
alias top="btm --color gruvbox" # this acronym...
alias charge="upower -i /org/freedesktop/UPower/devices/battery_BAT1"
alias grep=rg
alias find="fd -d 1"
alias diff=delta
alias yay=paru
alias yeet="paru -Rcs"
alias count="ls -1 | wc -l"
alias shutdown="shutdown now"
alias copy="wl-copy"
alias paste="wl-paste"
alias fn="echo 'the fn sing a song like its the leader of a soul crew' && cvlc fn.mp3"
#alias getpid="xprop _NET_WM_PID | sed 's/_NET_WM_PID(CARDINAL) = //' | ps `cat`"

export PATH="~/.local/bin:$PATH"
#export PATH=$HOME/sys161/bin:$HOME/sys161/tools/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export EDITOR=nvim
export TERMINAL=alacritty
