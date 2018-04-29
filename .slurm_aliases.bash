# SLURM aliases
alias sq='squeue'
alias squ='squeue -u vivekrai'
alias scall='scancel -u vivekrai'
alias sacct='sacct --format=JobID,JobName,Priority,User,CPUTime,MaxRSS'

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
  scancel "$@";
}
