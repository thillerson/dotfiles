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
plugins=(rails git ruby osx rvm brew autojump bundler git-flow gitignore)

source $ZSH/oh-my-zsh.sh
source $HOME/.bash_aliases
source $HOME/.custom_scripts
if [ -f $HOME/.api_keys ]; then
	source $HOME/.api_keys
fi

# Customize to your needs...
#Homes
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home/
export CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar
export ANDROID_HOME="/Applications/android"
export NODE_PATH="/usr/local/lib/node_modules"

export PATH=/Users/tony/.rvm/gems/ruby-1.9.3-p0/bin:/Users/tony/.rvm/gems/ruby-1.9.3-p0@global/bin:/Users/tony/.rvm/rubies/ruby-1.9.3-p0/bin:/Users/tony/.rvm/bin:/Users/tony/bin:/Users/tony/bin/servers:/Users/tony/.cabal/bin:/Applications/android/tools:/Applications/android/platform-tools:/Applications/flex_sdk/bin:/usr/local/Cellar/hbase/0.90.2/bin:/usr/local/share/npm/bin:/usr/local/Cellar/tomcat/6.0.26/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin::/usr/X11/bin:$PATH
export PATH="$HOME/.cask/bin:$PATH"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "/Users/tony/.rvm/scripts/rvm" ]] && source "/Users/tony/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
 
if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi

