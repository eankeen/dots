# shellcheck shell=sh

# asdf
export ASDF_DATA_DIR="$XDG_DATA_HOME/asdf"
export ASDF_DIR="$XDG_DATA_HOME/asdf"
export ASDF_CONFIG_FILE="$XDG_CONFIG_HOME/asdf/asdfrc"
export ASDF_DEFAULT_TOOL_VERSIONS_FILENAME="$XDG_CONFIG_HOME/asdf/tool-versions"
_path_prepend "$ASDF_DIR/bin"
_path_prepend "$ASDF_DATA_DIR/shims"

# android
export ANDROID_SDK_ROOT="$XDG_DATA_HOME/Android/sdk"
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME/Android/emulator"
export ANDROID_AVD_HOME="$XDG_DATA_HOME/Android/avd"

# atom
export ATOM_HOME="$XDG_DATA_HOME/atom"

# aws
export AWS_SHARED_CREDENTIALS_FILE="$XDG_DATA_HOME/aws/credentials"
export AWS_CONFIG_FILE="$XDG_DATA_HOME/aws/config"

# bash-completion
export BASH_COMPLETION_USER_DIR="$XDG_CONFIG_HOME/bash"
export BASH_COMPLETION_USER_FILE="$XDG_CONFIG_HOME/bash/bash_completion.sh"

# boto
export BOTO_CONFIG="$XDG_DATA_HOME/boto"

# bundle
# export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME/bundle"
# export BUNDLE_USER_CACHE="$XDG_CACHE_HOME/bundle"
# export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME/bundle"

# cabal
export CABAL_CONFIG="$XDG_CONFIG_HOME/cabal/config"
export CABAL_DIR="$XDG_DATA_HOME/cabal"
_path_prepend "$CABAL_DIR/bin"

# ccache
export CCACHE_DIR="$XDG_CACHE_HOME/ccache"
export CCACHE_CONFIGPATH="$XDG_CONFIG_HOME/ccache/config"

# cookiecutter
export COOKIECUTTER_CONFIG="$XDG_CONFIG_HOME/cookiecutter/cookiecutterrc"

# crenv
# export CRENV_ROOT="$XDG_DATA_HOME/crenv"
# _path_prepend "$CRENV_ROOT/bin"
# eval "$(crenv init -)"

# cpanm
export PERL_CPANM_HOME="$XDG_DATA_HOME/cpanm"

# cuda
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"

# curl
export CURL_HOME="$XDG_CONFIG_HOME/curl"

# dart
export PUB_CACHE="$XDG_CACHE_HOME/pub-cache"

# deno
export DVM_DIR="$XDG_DATA_HOME/dvm"
export DENO_INSTALL="$XDG_DATA_HOME/deno"
export DENO_INSTALL_ROOT="$DENO_INSTALL/bin"
_path_prepend "$DENO_INSTALL_ROOT"
_path_prepend "$DENO_INSTALL_ROOT/bin"

# docker
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"

# elinks
export ELINKS_CONFDIR="$XDG_CONFIG_HOME/elinks"

# g
export GOPATH="$XDG_DATA_HOME/go-path"
_path_prepend "$GOPATH/bin"

# gem
export GEM_HOME="$XDG_DATA_HOME/gem" # conflicts with rvm
export GEM_SPEC_CACHE="$XDG_CACHE_HOME/gem"
_path_prepend "$GEM_HOME/bin"
_path_prepend "$HOME/.gem/ruby/2.7.0/bin"

# ghcup (haskell)
export GHCUP_INSTALL_BASE_PREFIX="$XDG_DATA_HOME/ghcup"
_path_prepend "$GHCUP_INSTALL_BASE_PREFIX/bin" # requires symlink

# gitlib
export GITLIBS="$XDG_DATA_HOME/gitlibs"

# gradle
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"

# gtk
export GTK_RC_FILES="$XDG_CONFIG_HOME/gtk-1.0/gtkrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"

# ice authority
export ICEAUTHORITY="$XDG_RUNTIME_DIR/iceauthority"

# imap
export IMAPFILTER_HOME="$XDG_CONFIG_HOME/imapfilter"

# info
alias info='info --init-file $XDG_CONFIG_HOME/info/infokey'

# ipython
export IPYTHONDIR="$XDG_CONFIG_HOME/jupyter"

# irssi
alias irssi='irssi --config "$XDG_CONFIG_HOME/irssi" --home "$XDG_CONFIG_HOME/irssi"'

# junest
export JUNEST_HOME="$XDG_DATA_HOME/junest"

# jupyter
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME/jupyter"

# kde
export KDEHOME="$XDG_CONFIG_HOME/kde"

# krew
export KREW_ROOT="$XDG_DATA_HOME/krew"
_path_prepend "$KREW_ROOT/bin"

# ltrace
alias ltrace='ltrace -F "$XDG_CONFIG_HOME/ltrace/ltrace.conf"'

# maven
alias mvn='mvn -gs "$XDG_CONFIG_HOME/maven/settings.xml"'

# mongo
alias mongo='mongo --norc'

# most
export MOST_INITFILE="$XDG_CONFIG_HOME/most/mostrc"

# mplayer
export MPLAYER_HOME="$XDG_DATA_HOME/mplayer"

# mysql
export MYSQL_HISTFILE="$HOME/.history/mysql_history"

# n
export N_PREFIX="$XDG_DATA_HOME/n"
_path_prepend "$N_PREFIX/bin"

# nb
export NB_DIR="$XDG_DATA_HOME/nb"
export NB_HIST="$HOME/.history/nb_history"

# nimble
export CHOOSENIM_NO_ANALYTICS="1"
_path_prepend "$HOME/.nimble/bin"
_path_prepend "$XDG_DATA_HOME/nimble/bin"

# node
export NODE_REPL_HISTORY="$HOME/.history/node_repl_history"
export TS_NODE_HISTORY="$HOME/.history/ts_node_repl_history"

# npm / pnpm
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"
export NPM_CONFIG_STORE_DIR="$XDG_DATA_HOME/pnpm-store"

# nvidia
# alias nvidia-settings='nvidia-settings --config $XDG_DATA_HOME/nvidia-settings'

# nvm
export NVM_DIR="$XDG_DATA_HOME/nvm"

# packer
export PACKER_CONFIG="$XDG_DATA_HOME/packer/packerconfig"
export PACKER_CONFIG_DIR="$XDG_DATA_HOME/packer/packer.d"
export CHECKPOINT_DISABLE=1

# perl
export PERL_LOCAL_LIB_ROOT="$XDG_DATA_HOME/perl5"
export PERL_MB_OPT="--install_base \"$PERL_LOCAL_LIB_ROOT\""
export PERL_MM_OPT="INSTALL_BASE=\"$PERL_LOCAL_LIB_ROOT\""
_path_prepend "$PERL_LOCAL_LIB_ROOT/bin"
_path_prepend PERL5LIB "$PERL_LOCAL_LIB_ROOT/lib/perl5"

# phpbrew
_path_prepend "$XDG_DATA_HOME/phpenv/bin"

# phpenv
export PHPENV_ROOT="$XDG_DATA_HOME/phpenv"
_path_prepend  "$PHPENV_ROOT/bin"

# plenv
export PLENV_ROOT="$XDG_DATA_HOME/plenv"
_path_prepend "$XDG_DATA_HOME/plenv/bin"

# poetry
export POETRY_HOME="$XDG_DATA_HOME/poetry"
_path_prepend "$POETRY_HOME/bin"

# postgresql
export PSQLRC="$XDG_DATA_HOME/pg/psqlrc"
export PSQL_HISTORY="$HOME/.history/psql_history"
export PGPASSFILE="$XDG_DATA_HOME/pg/pgpass"
export PGSERVICEFILE="$XDG_DATA_HOME/pg/pg_service.conf"

# pulse
export PULSE_COOKIE="$XDG_DATA_HOME/pulse/cookie"

# pyenv
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
_path_prepend "$PYENV_ROOT/bin"
_path_prepend "$PYENV_ROOT/shims"

# python
# https://github.com/python/cpython/pull/13208
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc.py"

# readline
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"

# ripgrep
export RIPGREP_CONFIG_PATH="$XDG_CONFIG_HOME/ripgrep/config"

# rust
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
_path_prepend "$CARGO_HOME/bin"

# rvm
_path_prepend "$XDG_DATA_HOME/rvm/bin"
[ -r "$XDG_DATA_HOME/rvm/scripts/rvm" ] && . "$XDG_DATA_HOME/rvm/scripts/rvm"

# sccache
export SCCACHE_CACHE_SIZE="100G"
export SCCACHE_DIR="$XDG_CACHE_HOME/sccache"

# screen
export SCREENRC="$XDG_CONFIG_HOME/screenrc"

# sdkman
export SDKMAN_DIR="$XDG_DATA_HOME/sdkman"
[ -r "$SDKMAN_DIR/bin/sdkman-init.sh" ] && . "$SDKMAN_DIR/bin/sdkman-init.sh"

# sonarlint
export SONARLINT_USER_HOME="$XDG_DATA_HOME/sonarlint"

# stack
export STACK_ROOT="$XDG_DATA_HOME/stack"

# starship
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"

# subversion
export SUBVERSION_HOME="$XDG_CONFIG_HOME/subversion"

# swift
export SWIFTENV_ROOT="$XDG_DATA_HOME/swiftenv"
_path_prepend "$SWIFTENV_ROOT/bin"
# eval "$(swiftenv init -)"

# task
export TASKRC="$XDG_CONFIG_HOME/taskwarrior/taskrc"

# texmf
export TEXMFHOME="$XDG_DATA_HOME/textmf"

# todotxt
export TODOTXT_CFG_FILE="$XDG_CONFIG_HOME/todotxt/config.sh"

# tmux
alias tmux='tmux -f "$XDG_CONFIG_HOME/tmux/tmux.conf"'
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"

# vagrant
export VAGRANT_HOME="$XDG_DATA_HOME/vagrant"
export VAGRANT_ALIAS_FILE="$VAGRANT_HOME/aliases"

# vim
export VIMINIT="source $XDG_CONFIG_HOME/vim/vimrc"

# urxvt
export URXVT_PERL_LIB="$XDG_CONFIG_HOME/urxvt/ext"

# wakatime
export WAKATIME_HOME="$XDG_DATA_HOME/wakatime"

# wasmer
export WASMER_DIR="$XDG_DATA_HOME/wasmer"
# [ -r "$WASMER_DIR/wasmer.sh" ] && . "$WASMER_DIR/wasmer.sh"

# wasmtime
export WASMTIME_HOME="$XDG_DATA_HOME/wasmtime"
_path_prepend "$WASMTIME_HOME/bin"

# wget
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"

# wine
export WINEPREFIX="$XDG_DATA_HOME/wine"
# wine winecfg

# wolfram mathematica
export MATHEMATICA_BASE="/usr/share/mathematica"
export MATHEMATICA_USERBASE="$XDG_DATA_HOME/mathematica"

# X11
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"

# yarn
export YARN_CACHE_FOLDER="$XDG_CACHE_HOME/yarn"
_path_prepend "$XDG_DATA_HOME/yarn/bin"

# z
export _Z_DATA="$XDG_DATA_HOME/z"