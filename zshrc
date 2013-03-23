##
autoload zmv

##
source ~/.shell/common_exports.sh
source ~/.shell/common_aliases.sh
source ~/.shell/zshrc.sh
source ~/.shell/zsh_functions.sh
source ~/.shell/functions.sh

##
export EDITOR="vim"
bindkey -e

##
setopt AUTO_CD

## Colors
autoload -U colors
colors
setopt prompt_subst

## beautify correction prompt
export SPROMPT="Correct $fg[red]%R$reset_color to $fg[green]%r$reset_color? (Yes, No, Abort, Edit) "

## activate extended globbing
setopt extended_glob

##
BAT_CHARGE=batcharge.py

##
export RPROMPT='$(battery_charge)'

##
export PROMPT='${smiley} %{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %{$fg[green]%}$(collapse_pwd)%{$reset_color%} $(hg_prompt_info)$(git_super_status)$(virtualenv_info)
$(prompt_char) '

##
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh