#!/bin/bash

function file_count(){
    #Displaying the variable previously passed
    echo $(wc $1)
}

# Passing the name of the current file
file_count $0