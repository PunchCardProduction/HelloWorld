#!/bin/bash

currentUser=`ls -l /dev/console | awk '{print $3}'`

if [ $currentUser = "root" ]; then
	exit
else
    if [ -h ~/Documents/sharesAlias ]; then
        echo "baka"
        exit
    else
	    ln -s /Volumes/shares /Users/$currentUser/Documents/sharesalias
    fi
fi
