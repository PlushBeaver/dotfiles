#!/usr/bin/zsh

if [ $UID -eq 0 ]; then USER_COLOR=red; else USER_COLOR=green; fi

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fb_bold[gray]%}(%{$reset_color%}%{$fg[magenta]%}branch:%{$reset_color%} %{$fg_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[red]%}?"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[magenta]%}!"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg_bold[gray]%})%{$reset_color%}"

export PROMPT=\
'%{$fg_bold[$USER_COLOR]%}%n%{$reset_color$fg_bold[grey]%} vas %{$reset_color$fg[blue]%}%m%{$reset_color%}\
%{$fg_bold[grey]%} in %{$reset_color$fg_bold[yellow]%}%~%{$reset_color%}
  %{$fg_bold[white]%}%(!.#.\$)%{$reset_color%} '

export RPROMPT='$(git_prompt_info)'
