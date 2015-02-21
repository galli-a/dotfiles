export CLICOLOR=
#export LSCOLORS=ExgxdxbxcxCeceacad
export LSCOLORS=exgxdxbxcxceceacad

if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

#export PS1="\n\[\e[0;37m\]\h:\w \u \$\n> \[\e[0m\]"

source ~/.shell/common_exports.sh
source ~/.shell/common_aliases.sh
source ~/.shell/functions.sh
source ~/.shell/bash_functions.sh
source ~/.fzf.bash
