# Colors
BLK='\e[0;30m'       # Black
RED='\e[0;31m'       # Red
GRN='\e[0;32m'       # Green
YLW='\e[0;33m'       # Yellow
BLE='\e[0;34m'       # Blue
MAG='\e[0;35m'       # Purple
CYN='\e[0;36m'       # Cyan
WHT='\e[0;37m'       # White
RST="\[$(tput sgr0)\]"
#RST="\e[m"        # Reset

# bash completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# support 256 colors
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Alias
. $HOME/.bash_aliases

# Prompt
#PS1="[\u@\h][\W]\\$ ${RST}"
#PS1="─────  ${RST} "
PS1="\W »${RST} "

# history length
HISTSIZE=1000
HISTFILESIZE=2000

export EDITOR=vim

