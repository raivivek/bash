# SLURM aliases
alias sr='srun'
alias sq='squeue'
alias sqp='squeue -t PENDING'
alias sqr='squeue -t RUNNING'
alias squ='squeue -u $USER'
alias sacct='sacct --format=JobID,JobName,Priority,User,CPUTime,MaxRSS'
alias sacctu='sacct -u $(whoami)'

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
  echo "Canceled $@."; scancel "$@";
}

sinfo() {
  sstat --format=AveCPU,AvePages,AveRSS,AveVMSize,JobID -j "$@" --allsteps;
}

shold() {
  echo "Job $@ on hold."; scontrol hold "$@";
}

sstart() {
  echo "Resuming $@"; scontrol resume "$@";
}

srq() {
  echo "Requeued $@"; scontrol requeue "$@";
}
