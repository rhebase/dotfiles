# Path to your oh-my-zsh installation
export ZSH="/Users/ryan/.oh-my-zsh"
ZSH_THEME="robbyrussell"

ZSH_DISABLE_COMPFIX=true

plugins=(git)

source $ZSH/oh-my-zsh.sh
autoload -U promptinit; promptinit
prompt pure

# Add bash aliases
if [ -f "$HOME/.aliases" ]; then
    source "$HOME/.aliases"
fi

# Add bin to path
if [ -d "$HOME/bin" ]; then
    PATH="$PATH:$HOME/bin"
fi

export PATH="/usr/local/Cellar/ruby/3.0.1/bin:$PATH"
export PATH="$HOME/.gem/ruby/3.0.0/bin:$PATH"
export PYTHONDONTWRITEBYTECODE=1
