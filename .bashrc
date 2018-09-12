# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# exit if not running interactively
[[ -z "$PS1" ]] && return

# Parkerlab config
[[ -f $HOME/.parkerlab_config ]] && source ~/.parkerlab_config

# Load the shell dotfiles, and then some:
# For example, * ~/.path can be used to extend `$PATH`.
for file in ~/.{aliases,path,git_aliases,slurm_aliases,functions,exports}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Pkg-config path
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:$HOME/.local/lib/pkgconfig:$HOME/.anaconda3/lib/pkgconfig"

# load bash_prompt only if running interactively
[[ -f ~/.bash_prompt ]] && source ~/.bash_prompt

# FZF
[[ -f ~/.fzf.bash ]] && source ~/.fzf.bash

# autojump
[[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.autojump/etc/profile.d/autojump.sh

# color support for pagers
export LESS="--RAW-CONTROL-CHARS"
[[ -f ~/.LESS_TERMCAP  ]] && . ~/.LESS_TERMCAP
