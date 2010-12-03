source .bash_aliases
source .git-completion

if [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion
fi

if [ -n "$PS1" ]; then PS1='\033[1;33;40m[\033[1;32;40m$(~/.rvm/bin/rvm-prompt i v p g s)\033[1;33;40m][\033[1;32;40m\u@\h:\w\033[1;33;40m]$(__git_ps1 " (%s)")\033[0m\n\$ '; fi
# Make bash check it's window size after a process completes
shopt -s checkwinsize

export HISTCONTROL=ignoredups
export HISTCONTROL=ignoreboth

export LSCOLORS=dx

export PATH=~/bin:~/bin/servers:~/.cabal/bin:/Applications/android/tools:/Applications/flex_sdk/bin:~/work/hadoop/bin:~/work/hbase/bin:$PATH

#Homes
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home/

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion # RVM completion
