# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

DEFAULT_USER="tony"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="thillerson.agnoster"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rails git ruby osx rvm brew autojump bundler git-flow gitignore sbt)

source $ZSH/oh-my-zsh.sh
source $HOME/.bash_aliases
source $HOME/.custom_scripts
if [ -f $HOME/.api_keys ]; then
	source $HOME/.api_keys
fi

# Customize to your needs...

#Homes
export ANDROID_HOME="/Applications/android"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export NODE_PATH="/usr/local/lib/node_modules"
export NUNIT_HOME="/Users/tony/bin/NUnit"
export GROOVY_HOME="/usr/local/opt/groovy/libexec"
export RUBYMOTION_ANDROID_SDK=/Users/tony/.rubymotion-android/sdk
export RUBYMOTION_ANDROID_NDK=/Users/tony/.rubymotion-android/ndk
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ANDROID_HOME/tools/lib

export PATH=/Users/tony/.rvm/bin:/Users/tony/bin:/Users/tony/bin/servers:/Users/tony/.cabal/bin:/Applications/android/tools:/Applications/android/platform-tools:/Applications/flex_sdk/bin:/usr/local/share/npm/bin:/usr/local/bin:$PATH
export PATH="$HOME/.cask/bin:$PATH"
export PATH=/Applications/android/tools:/Applications/android/platform-tools:$PATH
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=~/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "/Users/tony/.rvm/scripts/rvm" ]] && source "/Users/tony/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi
if [ -f `brew --prefix`/etc/profile.d/z.sh ]; then
  . `brew --prefix`/etc/profile.d/z.sh
fi


fpath=(/usr/local/share/zsh-completions $fpath)

# jenv
# Jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi
export JENV_ROOT=/usr/local/opt/jenv

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export NVM_DIR="/Users/tony/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Golang
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$HOME/go
