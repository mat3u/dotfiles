HOSTNAME=$(hostname)

if [ "$HOSTNAME" = arcus ]; then
    PROMPT='%{$fg[green]%}%~%{$fg_bold[blue]%}$(git_prompt_info)%{$reset_color%} '
else
    PROMPT="%{$fg[red]%}$(hostname) %{$fg[green]%}%~%{$fg_bold[blue]%}$(git_prompt_info)%{$reset_color%} "
fi

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY=" ✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"
