# Setup aliases
[ -f ~/.aliases ] && source ~/.aliases

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
for file in ~/.{path,bash_prompt,exports,functions,parkerlab_config}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# git
[ -f ~/.git_aliases ] && source ~/.git_aliases

# slurm
[ -f ~/.slurm_aliases ] && source ~/.slurm_aliases

# FZF
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# autojump
[[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.autojump/etc/profile.d/autojump.sh

# color support for pagers
export LESS="--RAW-CONTROL-CHARS"
[[ -f ~/.LESS_TERMCAP  ]] && . ~/.LESS_TERMCAP
