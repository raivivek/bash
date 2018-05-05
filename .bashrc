# Setup aliases
[ -f ~/.aliases ] && source ~/.aliases

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
for file in ~/.{path,bash_prompt,exports,functions}; do
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
