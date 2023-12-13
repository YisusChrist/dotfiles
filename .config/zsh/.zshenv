# XDG variables
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_STATE_HOME="$HOME"/.local/state
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_DATA_DIRS=/usr/local/share:/usr/share:/var/lib/flatpak/exports/share:"$XDG_DATA_HOME"/flatpak/exports/share
export XDG_CONFIG_DIRS=/etc/xdg

# Default applications
export EDITOR="$([[ -n $DISPLAY && $(command -v subl) ]] && echo 'subl' || echo 'micro' || echo 'nano')"
export VISUAL=micro
export BROWSER="$([[ -n $DISPLAY && $(command -v firefox) ]] && echo 'firefox' || echo 'brave' || echo 'chromium')"

# XDG alias for files reallocation
export HISTFILE="$XDG_STATE_HOME"/bash/history
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export HISTFILE="$XDG_STATE_HOME"/zsh/history
export PSQL_HISTORY="$XDG_DATA_HOME"/psql_history
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup

# Personal scripts
export SCRIPTS=$HOME/.local/bin/scripts
export PATH=$SCRIPTS:$PATH

# Python bin packages
export PATH=$HOME/.local/bin/:$PATH

# Valgrind requirements for ArchLinux
export DEBUGINFOD_URLS="https://debuginfod.archlinux.org"

# Java path
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export PATH=$PATH:$JAVA_HOME

# NodeJS managers
export VOLTA_HOME="$XDG_DATA_HOME"/volta
export PATH="$VOLTA_HOME/bin:$PATH"
if [ -f /usr/share/nvm/init-nvm.sh ]; then
	source /usr/share/nvm/init-nvm.sh
fi

# FOSSA Api Key for https://app.fossa.com/
export FOSSA_API_KEY=38d78512b5cf0aff42e6c968e9611b04

# Nvidia-Wayland fixes
#export GBM_BACKEND=nvidia-drm
export __GLX_VENDOR_LIBRARY_NAME=nvidia

# Doom emacs scripts location
export PATH="$XDG_CONFIG_HOME/emacs/bin:$PATH"

# Perl paths
export PATH="/home/yisus_christ/perl5/bin${PATH:+:${PATH}}"
export PERL5LIB="/home/yisus_christ/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"
export PERL_LOCAL_LIB_ROOT="/home/yisus_christ/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"
export PERL_MB_OPT="--install_base \"/home/yisus_christ/perl5\""
export PERL_MM_OPT="INSTALL_BASE=/home/yisus_christ/perl5"

# Spicetify path
export PATH="$XDG_CONFIG_HOME/spicetify:$PATH"
export SPICETIFY_CONFIG="$XDG_CONFIG_HOME"/spicetify
. "/home/yisus_christ/.local/share/cargo/env"
