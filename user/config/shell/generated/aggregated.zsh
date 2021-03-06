# bpm.zsh
if [ -d "${XDG_DATA_HOME:-$HOME/.local/share}/bpm/source/pkg/bin" ]; then
	_path_prepend "${XDG_DATA_HOME:-$HOME/.local/share}/bpm/source/pkg/bin"
	if command -v bpm &>/dev/null; then
		eval "$(bpm init zsh)"
	fi
fi

# direnv.zsh
if command -v &>/dev/null; then
	eval "$(direnv hook zsh)"
fi

# mcfly.zsh
if command -v mcfly &>/dev/null;
	eval "$(mcfly init zsh)"
fi

