#!/bin/bash
#prompt the user to enter a source directory they want to backup
echo "Enter the source directory you want to backup:"
read source_dir 

#create a backup directory if it does not exist with a timestamp
backup_dir="backup_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$backup_dir"
#copy the contents of the source directory to the backup directory
cp -r "$source_dir"/* "$backup_dir"
#Display the number of files that were backed up    
num_files=$(find "$backup_dir" -type f | wc -l)
echo "Backup completed. $num_files files were backed up to $backup_dir."