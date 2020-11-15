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
    brew
    common-aliases
    copydir
    copyfile
    docker
    dotenv
    extract
    git
    git-auto-fetch
    git-escape-magic
    git-prompt
    gitignore
    gnu-utils
    helm
    history
    jsontools
    kubectl
    kube-ps1
    minikube
    nmap
    pip
    rsync
    sudo
    systemadmin
    tmuxinator
    vscode
    zsh-autosuggestions
    zsh-completions
    zsh-syntax-highlighting
)

# Make your oh-my-zsh live
source $ZSH/oh-my-zsh.sh
source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='nano'
else
    export EDITOR='nano'
fi

# K8s cluster displayed in shell
PS1='$(kube_ps1)'$'\n'$PS1

### Aliases block
# kubectx aliases
alias kctx="kubectx"
alias kns="kubens"
# java version aliases
alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java11='export JAVA_HOME=$JAVA_11_HOME'

# Default to Java 8
java8
