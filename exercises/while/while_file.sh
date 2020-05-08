#!/bin/bash

FILE_NAME="file2iterate.txt"
LINE_NUMBER=1;

cat $FILE_NAME | while read LINE
do
echo ${LINE_NUMBER}": "$LINE
((LINE_NUMBER++))
done