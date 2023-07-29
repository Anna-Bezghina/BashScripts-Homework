#!/bin/bash
Njob_file="/tmp/my_service_job.txt"
PIDjob_file="/tmp/my_service_file.txt"
case $1 in
	start)   sleep 300 &
		 PIDsvr=$!
		 Njob=$(jobs -l | grep sleep | tail -1 | cut -d" " -f1)
		 echo "NJ=$Njob">"$Njob_file"
		 echo "SERVP=$PIDsvr">"$PIDjob_file"
		 echo "$Njob $PIDsvr"
		 echo "Service is started" ;;
	stop)	 source /tmp/my_service_job.txt
		 source /tmp/my_service_file.txt
#		 servP=$( ps -aux | grep "sleep 300" | grep S | awk '{print $2}'| tail -1)
		 if pstree -p | grep $SERVP > /dev/null; then
			kill -15 $SERVP && echo "Service stoped" && 
			echo "$NJ  $SERVP terminated  ./my_script.sh start";
		 else 
			echo 'service was stopped|killed|terminated in other way earlier'
		 fi ;;
	restart) source /tmp/my_service_file.txt
		 pstree -p | grep $SERVP > /dev/null
		 exc=$?
		 if [[ $exc -eq 0 ]]; then
			 kill -15 $SERVP && echo "Service is stopped" && sleep 2 
			 sleep 300 &
			 PIDrst=$! && echo "SERVP=$PIDrst">"$PIDjob_file"
			 Njrst=$(jobs -l | grep sleep | tail -1 | awk '{print $1}')
			 echo "Service is started"
			 echo "$Njrst $PIDrst"
		 else 
			 echo "service wasn't launched"
		 fi ;;
	*) echo 'usage: my_service.sh [start|stop|restart]' ;;
esac

