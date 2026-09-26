#!/bin/bash

#create a directory called bash-demo
mkdir -p bash-demo

#navigate into the bash-demo directory
cd bash-demo

#create a file called demo.txt
touch demo.txt

#write some text into demo.txt (include current date)
echo "This is a demo file created on $(date)" > demo.txt

