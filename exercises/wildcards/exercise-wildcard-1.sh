#!/bin/bash

#This script rename all the images with jpg extension with the current date in YYYY-MM-DD

EXTENSION=".jpg"
echo $(ls *${EXTENSION}) 

for FILENAME in $(ls *${EXTENSION}) 
do
    if [ -f $FILENAME ]
    then
        mv $FILENAME $(date '+%Y-%m-%d')-$FILENAME
    fi
done
