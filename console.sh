#!/bin/bash
while true; do
    read -p "-> " command
    case $command in
        ls*)
            dir="${command#ls }" 
            if [ -z "$dir" ]; then 
                ls
	    elif [[ $dir = "~"* ]]; then
                dir="${dir/#\~/$HOME}"
                ls "$dir"
            else
		ls $dir
            fi
            ;;
        pwd)
            pwd
            ;;
        hi)
            echo "Hello $USER"
            ;;
        exit)
            echo "Goodbye!"
            break
            ;;
        *)
	echo 'Unknown command: $command. Known commands are in (ls | pwd | hi | exit )'
            ;;
    esac
done

