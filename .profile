#
# ~/.profile
#

## general ##
# general
export VISUAL="nvim"
export EDITOR="$VISUAL"
export SUDO_EDITOR="$VISUAL"
export DIFFPROG="nvim -d"
export PAGER="lessexport LANG=${LANG:-en_US.UTF-8}
"

# xdg [https://specifications.freedesktop.org/basedir-spec]
export XDG_DATA_HOME="$HOME/.local/share" # default
export XDG_CONFIG_HOME="$HOME/.config" # default
export XDG_DATA_DIRS="/usr/local/share/:/usr/share" # default
export XDG_CONFIG_DIRS="/etc/xdg" # default
export XDG_CACHE_HOME="$HOME/.cache" # default
export PATH="$HOME/.local/bin:$PATH"


## utils ##
# cp
alias cp="cp -i"

# df
alias df="df -h"

# free
alias free="free -m" 


## programs ##
# anki (github.com/ankitects/anki) [apps.ankiweb.net]
alias anki='anki -b "$XDG_DATA_HOME/anki"'

# ansible (github.com/ansible/ansible) [ansible.com]
export ANSIBLE_CONFIG="$XDG_CONFIG_HOME/ansible.cfg"

# atom (github.com/atom/atom) [atom.io]
export ATOM_HOME="$XDG_DATA_HOME/atom"

# aws
export AWS_SHARED_CREDENTIALS_FILE="$XDG_CONFIG_HOME/aws/credentials"
export AWS_CONFIG_FILE="$XDG_CONFIG_HOME/aws/config"

# bash-completeion
export BASH_COMPLETION_USER_FILE="$XDG_CONFIG_HOME/bash-completion/bash_completion"

# boto (github.com/boto/boto) [docs.pythonboto.org]
export BOTO_CONFIG="$XDG_CONFIG_HOME/boto"

# buku (github.com/jarun/buku)
alias b="bukdu --suggest"

# bundle (github.com/rubygems/bundler) [bundler.io]
export BUNDLE_CACHE_PATH="$XDG_CACHE_HOME/bundle"

# ccache (github.com/ccache/ccache) [ccache.dev]
export CCACHE_DIR="$XDG_CACHE_HOME"/ccache
export CCACHE_CONFIGPATH="$XDG_CONFIG_HOME"/ccache.config

# code (github.com/microsoft/vscode) [code.visualstudio.com]

# dart (github.com/dart-lang/sdk) [dart.dev]
export PUB_CACHE="$XDG_CACHE_HOME/pub-cache"

# deno
export DENO_INSTALL="$XDG_DATA_HOME/deno"
export DENO_INSTALL_ROOT="$DENO_INSTALL/root"
export PATH="$DENO_INSTALL/bin:$PATH"

# docker (github.com/moby/moby) [docker.com]
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"

# dotdrop (https://github.com/deadc0de6/dotdrop) [deadc0de.re/dotdrop]
alias dotdrop='dotdrop --cfg=$HOME/.dots/config.yaml'

# elinks (elinks.cz/elinks.git) [elinks.or.cz]
export ELINKS_CONFDIR="$XDG_DATA_HOME/elinks"

# flutter (github.com/flutter/flutter) [flutter.dev]
export PATH="$HOME/.local/opt/flutter/bin:$PATH"

# gcloud [cloud.google.com/sdk/gcloud]
test -r "$HOME/.local/opt/google-cloud-sdk/path.bash.inc" && . "$HOME/.local/opt/google-cloud-sdk/path.bash.inc"
test -r "$HOME/.local/opt/google-cloud-sdk/completion.bash.inc" && . "$HOME/.local/opt/google-cloud-sdk/completion.bash.inc"

# gem (github.com/rubygems/rubygems) [rubygems.org]
export GEM_HOME="$XDG_DATA_HOME"/gem
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem

# gitlib (github.com/jwiegley/gitlib)
export GITLIBS="$HOME/.local/opt/gitlibs"

# gnupg (git.gnupg.org/cgi-bin/gitweb.cgi) [gnupg.org]
alias gpg2='gpg2 --homedir "$XDG_DATA_HOME/gnupg"'
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
tty="$(tty)" && export GPG_TTY="$tty"; unset tty

# go (github.com/golang/go) [golang.org]
export GOROOT="$HOME/.local/opt/go/root"
export GOPATH="$HOME/.local/opt/go/path"
export PATH="$HOME/$GOPATH/bin:$PATH"

# gradle (github.com/gradle/gradle) [gradle.org]
export GRADLE_USER_HOME="$HOME/.local/opt/gradle"

# http-serve (node package)
alias http-serve='http-serve -c-1 -a 127.0.0.1'

# iceauthority
export ICEAUTHORITY="$XDG_RUNTIME_DIR/iceauthority"

# ipython (github.com/ipython/ipython) [ipython.org]
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter

# irssi (github.com/irssi/irssi) [irssi.org]
alias irssi='irssi --config "$XDG_CONFIG_HOME/irssi"'

# jupyter [jupyter.org]
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME/jupyter"

# krew (github.com/kubernetes-sigs/krew) [krew.sigs.k8s.io]
export KREW_ROOT="$HOME/.local/opt/krew"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# kubernetes (github.com/kubernetes/kubernetes)
export KUBECONFIG="$XDG_DATA_HOME/kube"

# less [greenwoodsoftware.com/less]
export LESSKEY="$XDG_CONFIG_HOME/less/keys"
export LESSHISTFILE="$XDG_CONFIG_HOME/less/history"
export LESSHISTSIZE="250"

# ltrace
alias ltrace='ltrace -F "$XDG_CONFIG_HOME/ltrace/ltrace.conf"'

# maven (github.com/apache/maven) [maven.apache.org]
alias mvn='mvn -gs "$XDG_CONFIG_HOME/maven/settings.xml"'

# most [jedsoft.org/most]
export MOST_INITFILE="$XDG_CONFIG_HOME/most/mostrc"

# mplayer [mplayerhq.hu]
export MPLAYER_HOME=$XDG_CONFIG_HOME/mplayer

# mysql (github.com/mysql/mysql-server) [mysql.com]
export MYSQL_HISTFILE="$XDG_DATA_HOME/mysql_history"

# n (github.com/tj/n)
export N_PREFIX="$HOME/.local/opt/n"
export PATH="$N_PREFIX/bin:$PATH"

# netbeams (github.com/apache/netbeans) [netbeans.org]
alias netbeams='netbeans --userdir "$XDG_CONFIG_HOME/netbeans"'

# nnn (github.com/jarun/nnn)
export NNN_FALLBACK_OPENER="xdg-open"
export NNN_DE_FILE_MANAGER="nautilus"

# node [nodejs.org]
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"

# npm (github.com/npm/cli) [npmjs.com]
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npmrc"

# nvm (github.com/nvm-sh/nvm)
export NVM_DIR="$XDG_DATA_HOME"/nvm

# packer (github.com/hashicorp/packer) [packer.io]
export PACKER_CONFIG="$XDG_CONFIG_HOME/packerconfig"
export PACKER_CONFIG_DIR="$XDG_CONFIG_HOME/packer.d"

# poetry (github.com/sdispater/poetry) [python-poetry.org]
export PATH="$HOME/.poetry/bin:$PATH"

# postgresql
export PSQLRC="$XDG_CONFIG_HOME/pg/psqlrc"
export PSQL_HISTORY="$XDG_CACHE_HOME/pg/psql_history"
export PGPASSFILE="$XDG_CONFIG_HOME/pg/pgpass"
export PGSERVICEFILE="$XDG_CONFIG_HOME/pg/pg_service.conf"

# readline
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"

# rust (github.com/rust-lang/rust) [rust-lang.org]
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export PATH="$CARGO_HOME/bin:$PATH"

# rvm (github.com/rvm/rvm) [rvm.io]
test -r "$HOME/.rvm/scripts/rvm" && . "$HOME/.rvm/scripts/rvm"
export PATH="$HOME/.rvm/bin:$PATH"

# sccache (github.com/mozilla/sccache)
export SCCACHE_DIR="$XDG_CACHE_HOME/sccache"
export SCCACHE_CACHE_SIZE="20G"

# screen (git://git.savannah.gnu.org/screen.git) [gnu.org/software/screen]
export SCREENRC="$XDG_CONFIG_HOME/screen/screenrc"

# snap (github.com/snapcore/snapd) [snapcraft.io]
export PATH="/snap/bin:$PATH"

# stack (github.com/commercialhaskell/stack) [haskellstack.org]
export STACK_ROOT="$XDG_DATA_HOME/stack"

# subversion [subversion.apache.org]
export SUBVERSION_HOME=$XDG_CONFIG_HOME/subversion

# terraform (github.com/hashicorp/terraform) [terraform.io]
export TF_CLI_CONFIG_FILE="$XDG_CONFIG_HOME/terraformrc-custom"

# tmux (github.com/tmux/tmux)
alias tmux='tmux -f "$XDG_CONFIG_HOME/tmux/tmux.conf"'
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"

# vagrant (github.com/hashicorp/vagrant) [vagrantup.com]
export VAGRANT_HOME="$HOME/.local/opt/vagrant.d"
export VAGRANT_ALIAS_FILE="$VAGRANT_HOME/aliases"

# wolfram mathematica [wolfram.com/mathematica]
export MATHEMATICA_BASE="/usr/share/mathematica"
export MATHEMATICA_USERBASE="$XDG_DATA_HOME/mathematica"

# yarn (github.com/yarnpkg/yarn) [yarnpkg.com]
export YARN_CACHE_FOLDER="$XDG_CACHE_HOME/yarn"
export PATH="$XDG_DATA_HOME/yarn/global/node_modules/.bin:$PATH"
