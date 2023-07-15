# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# Rm-Trash functionality
if [ -d ${HOME}/.local/share/Trash/ ]; then
  alias rm='trash-put'
fi

# Alias for ll command
alias ll='ls -la'

# Python Virtual Environments
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS=' -p /usr/bin/python3 '
export PROJECT_HOME=$HOME/Devel
source /usr/bin/virtualenvwrapper.sh

# Personal scripts
export PATH=$HOME/.local/bin/.Scripts:$PATH

# Neofetch
neofetch
