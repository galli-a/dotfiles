[[ -f ~/.bashrc ]] && . ~/.bashrc
bind '"[A":history-search-backward'
bind '"[B":history-search-forward'

if [ -f "$HOME/.bash_ps1" ]; then
	. "$HOME/.bash_ps1"
fi

if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
fi

#cd "`osascript -e 'tell application "Finder" to if window 1 exists then if target of window 1 as string is not ":" then get POSIX path of (target of window 1 as alias)'`"

# export PS1="\[\e[30;44m\]💻  \h \[\e[33;40m\]📂  \w \[\e[47;30m\]\[\e[1m\] 📝 \# \[\e[m\]\n\[\e[30;44m\]➜  \[\e[0m\] "
# export PS1="💻  \h 📂  \w \[\e[1m\] 📝 \# \[\e[m\]\n➜  \[\e[0m\] "