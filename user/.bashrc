# shellcheck shell=bash
#
# ~/.bashrc
#

# for interactive, non-login shells. scp and rcp may still
# read this despite assumed noninteractivity - so ensure
# nothing gets printed to the tty

# if profile can be read, source it
# shellcheck source=$HOME/.profile
test -r ~/.profile && source ~/.profile

# if not running interactively, exit
[[ $- != *i* ]] && return

# only enable colors for terminals that support true color
# hasColor() {
# 	test "$COLORTERM" = "truecolor"
# }

hasColor="$(
	test "$COLORTERM" = "truecolor"
	echo $?
)"

# -------------------- shell variables ------------------- #
FCEDIT="$EDITOR" # default
HISTCONTROL="ignorespace:ignoredups"
HISTFILE="$HOME/.history/bash_history"
HISTSIZE="32768"
HISTFILESIZE=$HISTSIZE
HISTIGNORE="?:ls *:[bf]g:pwd:clear*:exit*:* --help:* -h"
HISTTIMEFORMAT="%T %B %m %Y | "
INPUTRC="$XDG_CONFIG_HOME/inputrc"

# --------------------- shell options -------------------- #
# shopt
shopt -u autocd
shopt -s cdable_vars
shopt -s cdspell
shopt -s checkjobs
shopt -s checkwinsize # default
shopt -s cmdhist # default
shopt -s dirspell
shopt -s dotglob
shopt -u failglob
shopt -s globstar
shopt -s gnu_errfmt
shopt -s histappend
shopt -u hostcomplete
shopt -s interactive_comments # default
shopt -s no_empty_cmd_completion
shopt -s nocaseglob
shopt -s nocasematch
shopt -u progcomp
shopt -s progcomp_alias # not working due to complete -D interference?
shopt -u xpg_echo # default

# set
set -o notify # deafult
set -o physical # default

# ------------------------ colors ------------------------ #
# dir_colors
if test "$hasColor" -eq 0; then
	test -r "$XDG_CONFIG_HOME/dir_colors" \
		&& eval "$(dircolors -b $XDG_CONFIG_HOME/dir_colors)"
else
	unset LS_COLORS
fi

# ------------------------- bash ------------------------- #
# if the directory is not empty
if (
	shopt -s nullglob dotglob
	f=("/etc/bash/bashrc.d")
	((!${#f[@]}))
); then
	for sh in /etc/bash/bashrc.d/*; do
		[ -r "${sh}" ] && source "${sh}"
	done
fi

# -------------------------- PS1 ------------------------- #
if test "$hasColor" -eq 0; then
	# color
	if test "$EUID" = 0; then
		PS1="\[\e[31m\][\u@\h \w]\$\[\e[m\] "
	else
		PS1="\[\033[38;5;88m\][\[$(tput sgr0)\]\[\033[38;5;23m\]\u\[$(tput sgr0)\]\[\033[38;5;166m\]@\[$(tput sgr0)\]\[\033[38;5;23m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;166m\]\W\[$(tput sgr0)\]\[\033[38;5;88m\]]\[$(tput sgr0)\]\[\033[38;5;23m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
	fi
else
	# no color
	if test "$EUID" = 0; then
		PS1="[\u@\h \w]\$ "
	else
		PS1="[\u@\h \W]\$ "
	fi
fi

# ------------------------- core ------------------------- #
# diff
test "$hasColor" -eq 0 \
	&& alias diff='diff --color=auto'

# egrep
test "$hasColor" -eq 0 \
	&& alias egrep='egrep --colour=auto'

# fgrep
test "$hasColor" -eq 0 \
	&& alias fgrep='fgrep --colour=auto'

# grep
test "$hasColor" -eq 0 \
	&& alias grep='grep --colour=auto'

# ip
test "$hasColor" -eq 0 \
	&& alias ip='ip -color=auto'

# ls
test "$hasColor" -eq 0 \
	&& alias ls='ls --color=auto'

# sudo
complete -cf sudo

# ----------------------- programs ----------------------- #
# buildpacks
command -v pack >/dev/null && source $(pack completion)

# chezmoi
command -v chezmoi >/dev/null && eval "$(chezmoi completion bash)"

# poetry
command -v poetry >/dev/null && eval "$(poetry completions bash)"

# travis
test -f /home/edwin/.travis/travis.sh && source "$HOME/.travis/travis.sh"

# x11
xhost +local:root >/dev/null 2>&1

eval $(gnome-keyring-daemon -s)

# ---------------------- completion ---------------------- #
# bash_completion
test -r /usr/share/bash-completion/bash_completion && . /usr/share/bash-completion/bash_completion

# pack
if [ $(type -t compopt) = "builtin" ]; then
	complete -o default -F __start_pack p
else
	complete -o default -o nospace -F __start_pack p
fi

# ------------------------ cleanup ----------------------- #
unset hasColor