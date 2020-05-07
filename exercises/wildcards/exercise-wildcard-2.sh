#!/bin/bash

#This script rename all the images with the extension given by the user 
# with the input provided otherwise current date in YYYY-MM-DD will be used 

read -p "Please enter the file extension: " EXTENSION
read -p "Please enter the prefix (Press enter for $(date '+%Y-%m-%d')) :" PREFIX

FILES=$(ls *.${EXTENSION})

if [ -z $PREFIX ]
then
   PREFIX=$(date '+%Y-%m-%d')
fi
for FILE in $FILES 
do  
    if [ -f $FILE ]
    then
        NEW_FILENAME=$PREFIX-${FILE}
        echo "Renamin file $FILE to $NEW_FILENAME"  
        mv $FILE $NEW_FILENAME
    fi
done