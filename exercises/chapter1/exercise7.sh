#!/bin/bash

FILE=$1

if [ -f $FILE ]
then
    echo "Is a regular file"
elif [ -d $FILE ]
then
    echo "Is a directory"
else 
    echo "Is a diferent type of file"
fi

ls -ltr $FILE