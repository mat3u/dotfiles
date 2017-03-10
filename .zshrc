export ZSH=${HOME}/.oh-my-zsh

ZSH_THEME="simple"
#ZSH_THEME="geometry"

plugins=(git docker node npm zsh-autosuggestions)

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/`whoami`/.bin"

source $ZSH/oh-my-zsh.sh

export NVM_DIR="${HOME}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Aliases

alias e=nvim
alias vim=nvim
alias so=source
alias clip="xclip -selection c"
alias c=/usr/bin/clear
alias clear="c && motd"
alias docker-cleanup="docker ps --all | grep -v sinopia | cut -f1 -d " " | grep -v CONTAINER | xargs docker rm -f"
alias docker-ip="docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'"
alias gpod="git pull origin develop"


unalias d
alias d=docker

# Replace CAPS LOCK with additional CTRL
# setxkbmap -layout pl -option esc:nocaps 2>/dev/null

# ssh-agent
if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s`
  ssh-add
fi

function motd {
	echo "     __ _ _ __ ___ _   _ ___ "
	echo "    / _\` | '__/ __| | | / __|"
	echo "   | (_| | | | (__| |_| \\__ \\"
	echo "    \\__,_|_|  \\___|\\__,_|___/"
	echo ""
	uptime
	echo ""
}

vim --cmd "set paste" +qall

motd
