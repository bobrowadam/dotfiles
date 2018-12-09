# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export ZSH=/$HOME/.oh-my-zsh
## source /$HOME/secrets.sh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="lambda-mod"
ZSH_THEME="norm"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colorize)

## source ~/.nvm/nvm.sh
source $ZSH/oh-my-zsh.sh
source ~/secrets.sh

# User configuration

# You may need to manually set your language environment
#export LANG="en_US.UTF-8"
#export LC_ALL="en_US.UTF-8"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

alias emacs="/usr/local/opt/emacs-plus/bin/emacsclient $1 -nw"
alias em="/usr/local/opt/emacs-plus/bin/emacs $1 -Q -nw --load /Users/bob/.emacs.d/.init.d.light.el"
alias Emacs="open -a /usr/local/opt/emacs-plus/bin/emacs-26.1"
alias Em="open -a /usr/local/opt/emacs-plus/bin/emacs-26.1 --args -Q"
alias elight="open -a /usr/local/opt/emacs-plus/bin/emacs-26.1 --args -q --load '~/.emacs.d/.init.d.light.el'"
alias eml="/usr/local/opt/emacs-plus/bin/emacs $1 -nw -q --load '~/.emacs.d/.init.d.light.el'"
alias ctags="`brew --prefix`/bin/ctags"

export EDITOR="/usr/local/opt/emacs-plus/bin/emacs -nw -Q --load '~/.emacs.d/.init.d.light.el'"

# alias elight='/usr/local/Cellar/emacs-plus/25.3/bin/emacs -q --load ~/.init.d.light'
#alias elight='open -a /usr/local/Cellar/emacs-plus/25.3/bin/emacs --args -q --load ~/.init.d.light'

#alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"


# rust src path
export RUST_SRC_PATH=/Users/bob/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/x86_64-apple-darwin/lib

# kub aliases:
alias k='kubectl --namespace bob'
alias ccache='sudo killall -HUP mDNSResponder' # Clean DNS cahce.
alias helmup='/Users/bob/source/helm-charts/bin/up  $1'

# added by travis gem
[ -f /$HOME/.travis/travis.sh ] && source /$HOME/.travis/travis.sh
# export sbcl PATH
export PATH="/usr/local/Cellar/sbcl/1.4.11/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/node@8/bin:$PATH"

# added by travis gem
[ -f /Users/bob/.travis/travis.sh ] && source /Users/bob/.travis/travis.sh
