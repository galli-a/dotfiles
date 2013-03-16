alias rmdu="find ./ -iname '._*' -print -delete"
alias batteria="ioreg -p IODeviceTree -n 'battery' -w 0 | grep Battery"
alias pylab="ipython qtconsole --pylab=inline"
alias pylab2="ipython qtconsole --pylab"
alias pylabn="ipython notebook --pylab=inline"
alias vim="mvim -v"
alias lsrebuild="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user"
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
alias ls="ls -G"
alias fixopenwith="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user"
alias ql="qlmanage -p &>/dev/null"