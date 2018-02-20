# SLURM aliases
alias squ='squeue -u vivekrai'
alias scA='scancel -u vivekrai'

sjob() {
  scontrol show jobid -dd "$@" | lss;
}

sout() {
  sjob "$@" | grep 'StdOut' | cut -d'=' -f 2 | xargs less +G;
}

serr() {
  sjob "$@" | grep 'StdErr' | cut -d'=' -f 2 | xargs less +G;
}

scjob() {
  scancel "$@"
}
