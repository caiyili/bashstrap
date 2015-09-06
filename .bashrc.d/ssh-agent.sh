ssh_ag_file=~/.ssh/.ssh-agent 
flag=0
if [[ -f $ssh_ag_file ]]; then
    source_ag_pid=`cat $ssh_ag_file | tail -1 | cut -d" " -f4 | bc`
    real_ag_pid=`pgrep ssh-agent | head -1`
    if [[ "${source_ag_pid}" == "${real_ag_pid}" ]]; then
        flag=1
    fi
fi
[[ "1" == "$flag" ]] || ssh-agent > $ssh_ag_file
source $ssh_ag_file
