# source git alises
[ -f ~/.git_aliases.bash ] && source ~/.git_aliases.bash
[ -f ~/.slurm_aliases.bash ] && source ~/.slurm_aliases.bash

# cd with auto ls
cd() { builtin cd "$@" && l; }

# rsync copy with progress
cp() {
  rsync -WaP --human-readable --info=name0,progress2 $1 $2;
}

# path
export CDPATH=.:~:/projects:~/scripts:~/sandbox:~/.local

# aliases
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../..'
alias ~='cd ~'
alias s='sudo'
alias se='sudo env PATH="$PATH"'

# pagers
alias lss='less -S'
alias zl='zless -S'
alias zm='zmore'
alias zc='zcat'

# dir stuff 
alias d='cd'
alias md='mkdir -pv'
alias rmR='rm -r -f'

# list-dirs
alias ll='l -lh --sort=size'
alias ls='ls -CF --color'
alias l='ls --ignore=.git'
alias lla='ll -A' # hidden

# permissions
alias s='sudo'
alias ax='chmod a+x'

# edit
alias e='vim'
alias ge='gvim'
alias vi='vim'

# do bioinformatics?
alias tb='tabix'
alias st='samtools'
alias bt='bcftools'
alias vt='vcftools'

# processes
alias ht='htop'
alias top='htop'
alias topu='htop -u $(whoami)'

# misc
alias hs='history | grep $1'
alias c='clear'
alias g='git'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

[ -f ~/.twoline_prompt.sh ] && source ~/.twoline_prompt.sh

# autojump
 
# Get color support for 'less'
export LESS="--RAW-CONTROL-CHARS"

# Use colors for less, man, etc.
[[ -f ~/.LESS_TERMCAP ]] && . ~/.LESS_TERMCAP

# autocorrect typos
shopt -s cdspell
shopt -s dirspell

# autocd
shopt -s autocd
shopt -s cmdhist
shopt -s checkjobs
shopt -s expand_aliases
shopt -s direxpand
