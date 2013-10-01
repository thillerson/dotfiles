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
alias trail='tail -f'

# program aliases
alias m8="mate ."
alias air="adl application.xml"
alias cuke="cucumber features -t tony"
alias restart="touch tmp/restart.txt"
alias vim="vim -N"
alias itest="infinity_test --rspec --rails"
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
alias bh="cd ~/work/boozehound"
alias picnote="cd ~/work/picnote"
alias clickable="cd ~/work/clickable"

#git aliases
alias gl='git pull'
alias gd='git diff'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch --color'
alias gba='git branch -a --color'
alias gsvn='git svn'
alias get='git fetch && git pull && git lol'
alias gpom='git push origin master'
alias gs='git status --short'
alias gsp='git smart-pull'
alias gf='git flow'
alias git-conflicts="git ls-files -u | awk '{print $4}' | sort -u"

pman() {
  man -t "${1}" | open -f -a /Applications/Preview.app/
}
