export ZSH=/home/mat3u/.oh-my-zsh

ZSH_THEME="simple"

plugins=(git docker node npm)

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/`whoami`/bin"

source $ZSH/oh-my-zsh.sh

# Aliases

alias e=nvim
alias vim=nvim
alias so=source
alias clip="xclip -selection c"

# Replace CAPS LOCK with additional CTRL
setxkbmap -layout pl -option ctrl:nocaps 2>/dev/null

# Set color
so ~/.config/base16-gnome-terminal

function motd {
	echo "     __ _ _ __ ___ _   _ ___ "
	echo "    / _\` | '__/ __| | | / __|"
	echo "   | (_| | | | (__| |_| \\__ \\"
	echo "    \\__,_|_|  \\___|\\__,_|___/"
	echo ""
	uptime
	echo ""
}

motd
