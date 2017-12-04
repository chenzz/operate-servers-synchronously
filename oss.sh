#!/bin/sh

printUsage() 
{
	echo "Usage:$0 [-u user] [-p port] [-i identify_key] [-l ip_list_file] [ip1 ip2 ... ipn]"
        echo "eg:$0 ip_list_file"
	exit 2
}

#parse argument
has_specify_ip_list=0

while getopts "hi:l:p:a:" option
do
	case $option in
		i)
			key="-i $OPTARG";;
    		p)
			port=$OPTARG;;
    		u)
			user=$OPTARG;;
    		l)
			ip_list_file=$OPTARG
			has_specify_ip_list=1
			;;
		[?])
			printUsage
			;;
	esac
done

hosts=$*

if [ 1 -eq ${has_specify_ip_list} ]
then
	hosts=`cat ${ip_list_file}`
fi

if [ -z "${hosts}" ]
then
	printUsage
fi


#construct tumux window
tmux new-session -d -s localhost
 
for host in ${hosts}
do
	tmux split-window -h "ssh ${host}"
done

tmux kill-pane -t 0
tmux select-pane -t 0
tmux select-layout tiled
tmux set-window-option synchronize-panes on
 
tmux -2 attach-session -t localhost









