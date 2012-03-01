# Based on https://github.com/blinks zsh theme

function _git_char() {
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    echo "%{$fg_bold[green]%}±%{$reset_color%}"
  else
    echo ' '
  fi
}

local arrow_prompt="%(?,%{$fg[green]%}➔%{$reset_color%},%{$fg[red]%}➔%{$reset_color%})"

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✐%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%{$reset_color%}
%{$fg[yellow]$bg[black]%}%~ $(_git_char)$(git_prompt_info)%E%{$reset_color%}
${arrow_prompt} %{$reset_color%} '

RPROMPT='%{$fg[yellow]%}$(~/.rvm/bin/rvm-prompt)%E%{$reset_color%}'
