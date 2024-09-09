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
plugins=(rails git ruby macos rvm brew bundler git-flow gitignore sbt docker kubectl mix poetry python pip)

source $ZSH/oh-my-zsh.sh
source $HOME/.bash_aliases
source $HOME/.custom_scripts

#Homes
export ANDROID_HOME="/Applications/android"

export NUNIT_HOME="/Users/tony/bin/NUnit"
export GRADLE_USER_HOME="/Users/tony"
export RUBYMOTION_ANDROID_SDK=/Users/tony/.rubymotion-android/sdk
export RUBYMOTION_ANDROID_NDK=/Users/tony/.rubymotion-android/ndk
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ANDROID_HOME/tools/lib

export PATH=/opt/homebrew/bin:/Users/tony/.rvm/bin:/Users/tony/bin:/Users/tony/bin/servers:/Users/tony/.cabal/bin:/Applications/android/tools:/Applications/android/platform-tools:/Applications/flex_sdk/bin:/usr/local/share/npm/bin:/usr/local/bin:$PATH
export PATH="$HOME/.cask/bin:$PATH"
export PATH=/Applications/android/tools:/Applications/android/platform-tools:$PATH
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=~/bin:$PATH

if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi
if [ -f `brew --prefix`/etc/profile.d/z.sh ]; then
  . `brew --prefix`/etc/profile.d/z.sh
fi

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

# Jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi
export JENV_ROOT=/usr/local/opt/jenv

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export NVM_DIR="/Users/tony/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Golang
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/opt/go/libexec/bin:$GOPATH/bin

# MachineShop
source $HOME/.machineshop

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Dotnet
export DOTNET_HOST_PATH="/usr/local/share/dotnet"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tony/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/tony/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tony/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/tony/google-cloud-sdk/completion.zsh.inc'; fi

. /opt/homebrew/etc/profile.d/z.sh

# Created by `pipx` on 2024-07-23 03:11:08
export PATH="$PATH:/Users/tony/.local/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

. /opt/homebrew/opt/asdf/libexec/asdf.sh

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
