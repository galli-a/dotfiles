extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)        tar xjf $1        ;;
            *.tar.gz)         tar xzf $1        ;;
            *.bz2)            bunzip2 $1        ;;
            *.rar)            unrar x $1        ;;
            *.gz)             gunzip $1         ;;
            *.tar)            tar xf $1         ;;
            *.tbz2)           tar xjf $1        ;;
            *.tgz)            tar xzf $1        ;;
            *.zip)            unzip $1          ;;
            *.Z)              uncompress $1     ;;
            *)                echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

if [ -z "\${which tree}" ]; then
  tree () {
      find $@ -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
  }
fi

shell () {
  ps | grep `echo $$` | head -1 | awk '{ print $4 }'
}

function clip() {
	type=`file "$1"|grep -c text`
	if [ $type -gt 0 ]; then
		cat "$@"|pbcopy
		echo "Contents of $1 are in the clipboard."
	else
		echo "File \"$1\" is not plain text."
	fi
}

# cd to the path of the front Finder window
cdf() {
	target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
	if [ "$target" != "" ]; then
		cd "$target"; pwd
	else
		echo 'No Finder window found' >&2
	fi
}

vman() {
	vim -c "SuperMan $*"

	if [ "$?" != "0" ]; then
		echo "No manual entry for $*"
	fi
}

## easier anybar call
function anybar() { echo -n $1 | nc -4u -w0 localhost ${2:-1738}; }

# outputs a text file with line numbers
lno() {
	if [ $# == 0 ]; then
		echo "No filename provided."
	else
		sed = "$1" | paste -s -d '\t\n' - -
	fi
}

# man() {
#     env \
#         LESS_TERMCAP_mb=$'\e[1;31m' \
#         LESS_TERMCAP_md=$'\e[1;31m' \
#         LESS_TERMCAP_me=$'\e[0m' \
#         LESS_TERMCAP_se=$'\e[0m' \
#         LESS_TERMCAP_so=$'\e[1;44;33m' \
#         LESS_TERMCAP_ue=$'\e[0m' \
#         LESS_TERMCAP_us=$'\e[1;32m' \
#             man "$@"
# }