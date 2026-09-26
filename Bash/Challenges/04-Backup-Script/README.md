# Challenge 4: Backup Script for Text Files

## Overview

This challenge involved developing a Bash script that automates backing up text files from a user-specified directory.

The script creates a timestamped backup directory, copies matching `.txt` files and displays the number of files backed up.

This exercise was completed as part of my CoderCo DevOps training.

## Challenge Requirements

- Prompt the user for a source directory.
- Create a backup directory if it does not exist.
- Copy all `.txt` files from the source directory.
- Include a timestamp in the backup directory name.
- Display the number of files backed up.

## My Implementation

My original solution used `read` to capture a source directory, `date` to generate a timestamp, `mkdir` to create the backup directory and `cp` to copy files.

I subsequently improved the script to match the challenge requirements more precisely and introduce additional error handling.

The updated script performs the following operations:

1. Prompts the user to enter a source directory.
2. Checks whether the directory exists.
3. Identifies `.txt` files in the specified directory.
4. Checks whether matching files were found.
5. Creates a timestamped backup directory.
6. Copies the matching files into the backup directory.
7. Displays the number of successfully copied files.

## Concepts Practised

| Concept | Implementation |
|---|---|
| User input | `read -r` |
| Directory validation | `-d` |
| Conditional statements | `if/else` |
| Timestamps | `date` |
| Command substitution | `$(date ...)` |
| Directory creation | `mkdir -p` |
| File copying | `cp` |
| Arrays | `txt_files=(...)` |
| Array length | `${#txt_files[@]}` |
| Error handling | Exit codes and conditional checks |

## Running the Script

Grant execution permissions:

```bash
chmod +x solution.sh
```

Execute:

```bash
./solution.sh
```

Enter the directory containing the text files you want to back up.

## Example Output

```text
Enter the source directory you want to backup:
/home/user/documents

Backup completed.
5 files were backed up to backup_20260926_150000.
```

The timestamp and file count will depend on the execution time and source directory contents.

## Limitations

This introductory script copies `.txt` files from the specified directory only.

It does not recursively search subdirectories, preserve complete directory structures or automatically delete older backups.

For production use, additional features such as logging, backup verification, retention policies and destination configuration would be beneficial.

## Key Takeaways

This challenge reinforced my understanding of Bash automation, file operations, timestamps, arrays and conditional statements.

It also demonstrated the importance of validating user input and checking whether operations succeed before reporting completion.

These techniques provide a foundation for developing more advanced Linux administration and backup automation scripts.