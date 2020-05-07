#!/bin/bash

function directory_count(){
    for DIR in $@
    do
        if [ -d $DIR ]
        then
            echo $DIR 
            echo "  "$(ls $DIR | wc -l)
        fi
    done
}

#
directory_count /etc /var /usr/bin