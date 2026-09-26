#!/bin/bash

#Set local variables 
my_home="$HOME"
my_user="$USER"
my_os="$OSTYPE"
my_logname="$LOGNAME"
my_shell="$SHELL"
my_pwd="$PWD"
my_path="$PATH"
my_lang="$LANG"

#access the Home directory
# echo "Home directory: $HOME"

# #print current user
# echo "Current user: $USER"

# #print OS Type
# echo "OS Type: $OSTYPE"

#print my_home, my_user, and my_os variables
echo "Home directory: $my_home"
echo "Current user: $my_user"
echo "OS Type: $my_os"
echo "Log name: $my_logname"
echo "Shell: $my_shell"
echo "Current working directory: $my_pwd"
echo "Path: $my_path"
echo "Language: $my_lang"
