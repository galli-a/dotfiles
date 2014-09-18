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
export VISUAL=vim
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line
bindkey -e

##
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

HISTSIZE=1000
if (( ! EUID )); then
  HISTFILE=~/.history_root
else
  HISTFILE=~/.history
fi
SAVEHIST=1000
setopt SHARE_HISTORY

##
setopt AUTO_CD

##
autoload -U compinit && compinit
zstyle ':completion:*' menu select
setopt menu_complete

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
source ~/.fzf.zsh
