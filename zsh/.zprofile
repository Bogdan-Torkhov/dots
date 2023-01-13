# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
export _JAVA_AWT_WM_NONREPARENTING=1


# Added by Toolbox App
export PATH="$PATH:/home/deusbog/.local/share/JetBrains/Toolbox/scripts"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

