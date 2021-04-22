# job-runus

## Run mode

```
job-runus -n -i -p -d <job name> -q -l -f lock_file -w <wait_lock> -x -t <timeout> <command> <args>
        -n - dry run
        -i - no JOBID prefix in log file
        -p - no error dump
        -d - job name / description
        -q - quiet run when locked
        -b - use only base name for lock_file
        -l - guard execution (only allow one copy)
        -f - guard execution (only allow one copy) with named lock_file
        -w - wait for lock for wait_lock seconds
        -t - terminate command after timeout seconds (kill 5 seconds after timeout)
```

## Report mode

```
./job-runus -r -l -1 -k -a -g -x <filter> -s <entry>
        -l - list errors
        -x - execute filter for each entry (not implemented at the moment)
        -1 - dump one entry and exit
        -k - keep dumped entry
        -s - show entry
```
