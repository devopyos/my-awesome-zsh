# oh-my-zsh working directory
ZSH=$HOME/.oh-my-zsh

# Path to dotenv file containing all of the variables
ZSH_DOTENV_FILE=$HOME/.zshenv

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    alias-finder
    common-aliases
    debian
    docker
    dotenv
    extract
    history
    jsontools
    nmap
    pip
    rsync
    screen
    sudo
    systemadmin
    systemd
    tmuxinator
    zsh-autosuggestions
    zsh-completions
    zsh-syntax-highlighting
)

# Make your oh-my-zsh live
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='nano'
else
    export EDITOR='nano'
fi
