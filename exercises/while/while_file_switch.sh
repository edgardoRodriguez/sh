#!/bin/bash

MESSAGE="1. Show disk usage. \n2. Show system uptime. \n3. Show the users logged into the system. \nWhat you would like to do? (Enter q to quit)"

while true
do
echo $MESSAGE
read -p "Enter option: " OPTION 
case $OPTION in
"1")
echo $(df)
;;
2)
echo $(uptime)
;;
3)
echo $(last)
;;
"q")
break
;;
*)
echo "Invalid option"
esac
done