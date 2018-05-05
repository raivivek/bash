# Homebrew
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'

# aliases
alias cp='cp -iv'
alias mv='mv -iv'
alias fix_stty='stty sane'
alias path='echo -e ${PATH//:/\\n}'

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../..'
alias ~='cd ~'
alias s='sudo'
alias se='sudo env PATH="$PATH"'

alias j='jobs'

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
    colorflag="--color"
else # OS X `ls`
    colorflag="-G"
fi

# Trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"

# Recursively delete `.DS_store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# pagers
alias lss='less -FSRXc'
alias zl='zless -FSRXc'
alias zm='zmore'
alias zc='zcat'

# dir stuff 
alias d='cd'
alias md='mkdir -pv'
alias rmr='rm -r -f'

# list-dirs
alias ls='ls -Fhp ${colorflag}'
alias l='ls'
alias ll='l -l'
alias lla='ll -a'
alias lsd="ll | grep --color=never '^d'"

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

## autocorrect typos
shopt -s cdspell
shopt -s dirspell

## autocd
shopt -s autocd
shopt -s cmdhist
shopt -s checkjobs
shopt -s expand_aliases
shopt -s direxpand
shopt -s histappend
shopt -s nocaseglob

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
    shopt -s "$option" 2> /dev/null;
done;

# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
    source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion;
fi;

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
    complete -o default -o nospace -F _git g;
fi;
