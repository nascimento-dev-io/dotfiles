# Environment variables
# export NODE_ENV="development"

# Aliases
#alias zsc="code ~/.zshrc"
#alias zs="source ~/.zshrc"

# ZSH Variables
export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="spaceship"
# spaceship | amuse | half-life


# ZSH Plugins
plugins=(git zsh-autosuggestions zsh-completions zsh-syntax-highlighting)
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh

#
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ffe4b8,standout"

# NVM
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Android Studio stuff
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.12.jdk/Contents/Home
# export ANDROID_HOME=~/Android/Sdk
# export PATH=$PATH:$ANDROID_HOME/emulator
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/tools/bin
# export PATH=$PATH:$ANDROID_HOME/platform-tools
