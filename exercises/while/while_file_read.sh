#!/bin/bash

FILE_NAME="file2iterate.txt"
LINE_NUMBER=1
read -p "How many lines do you want to see: " LINES

cat $FILE_NAME | while read LINE 
do
echo ${LINE_NUMBER}": "$LINE
((LINE_NUMBER++))
if [ $LINE_NUMBER -gt $LINES ]
then
break
fi
done