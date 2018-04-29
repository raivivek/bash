# cd with auto ls
cd() { builtin cd "$@" && l; }

# rsync copy with progress
rcp() {
  rsync -avzh --human-readable --progress --stats $1 $2;
}

# path
export CDPATH=.:~:/projects:~/scripts:/lab/work/vivekrai/analyses

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
alias rmr='rm -r -f'

# list-dirs
alias ls='ls -CF --color'
alias l='ls --ignore=.git'
alias ll='l -lh --sort=size'
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

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# twoline prompt
[ -f ~/.twoline_prompt.sh ] && source ~/.twoline_prompt.sh

# autojump
[[ -s /home/vivekrai/.autojump/etc/profile.d/autojump.sh ]] && source /home/vivekrai/.autojump/etc/profile.d/autojump.sh
 
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
