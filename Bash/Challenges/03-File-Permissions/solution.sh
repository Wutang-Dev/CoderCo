#!/bin/bash

#prompt the user for a filename
echo "Please enter a filename:"
read filename

#check whether the file exists
if [ -e "$filename" ]; then
    echo "File '$filename' exists."
    #check whether the file is readable
    if [ -r "$filename" ]; then 
        echo "File '$filename' is readable."
    else
        echo "File '$filename' is not readable."
    fi
    #check whether the file is writable
    if [ -w "$filename" ]; then
        echo "File '$filename' is writable."
    else
        echo "File '$filename' is not writable."
    fi
    #check whether the file is executable
    if [ -x "$filename" ]; then
        echo "File '$filename' is executable."
    else
        echo "File '$filename' is not executable."
    fi
else
    echo "File '$filename' does not exist."
fi  