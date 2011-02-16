alias ..='cd ..'
alias df="df -h"
alias ls='ls -Gh'
alias ll='ls -l'
alias la='ls -lA'
alias cp='cp -v'
alias mv='mv -v'
alias grep='grep --color'
alias ssu="svn status -u"
alias svn_addall="svn status | grep '^\?' | sed -e 's/? *//' | sed -e 's/ /\\ /g' | xargs svn add"
alias rtag='find . -name *.rb | xargs ctags -a -e -f TAGS'
alias devtail='tail -f -n0 log/development.log'

# iPhone simulator apps directory
alias sim="cd ~/Library/Application\ Support/iPhone\ Simulator/3.2/Applications/"

# program aliases
alias m8="mate ."
alias air="adl application.xml"
alias cuke="cucumber features -t tony"
alias restart="touch tmp/restart.txt"
alias vim="vim -N"

alias capd="cap deploy"

#project aliases
alias flounder="cd ~/work/flounder"
alias Names="cd ~/work/seventytwonames/Names"
alias bka="cd ~/work/bkandroid"
alias bki="cd ~/work/bkiphone"
alias blitz="cd ~/work/captioncontest"
alias iblitz="cd ~/work/captionblitziphone"
alias work="cd ~/work"
alias peeps="cd ~/work/peeps"
alias sketch="cd ~/work/sketch-pad"
alias bh="cd ~/work/boozehound"
alias picnote="cd ~/work/picnote"

#git aliases
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch --color'
alias gba='git branch -a --color'
alias gsvn='git svn'
alias get='git fetch && git pull && git lol'
alias gpom='git push origin master'

alias gh="github"
alias git="hub"

pman() {
  man -t "${1}" | open -f -a /Applications/Preview.app/
}
