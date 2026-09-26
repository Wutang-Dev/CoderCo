# Challenge 2: File Operations Script

## Overview

This challenge involved creating a Bash script to automate basic Linux file and directory operations as part of my CoderCo DevOps training.

The objective was to create a directory, navigate into it, generate a text file, write the current date and display the file's contents.

## Challenge Requirements

- Create a directory called `bash_demo`.
- Navigate into the directory.
- Create a file called `demo.txt`.
- Write text to the file, including the current date.
- Display the file's contents.

## My Implementation

I developed a Bash script using commands I had previously practised during the Linux and Bash modules.

The script performs the following operations:

1. Uses `mkdir -p` to create the directory if it does not already exist.
2. Uses `cd` to navigate into the directory.
3. Uses `touch` to create an empty text file.
4. Uses `echo` and command substitution to write the current date into the file.
5. Uses `cat` to display the generated file.

I also added basic error handling to prevent the script from continuing if directory navigation fails.

## Concepts Practised

| Command | Purpose |
|---|---|
| `mkdir -p` | Create a directory if it doesn't exist |
| `cd` | Change directory |
| `touch` | Create an empty file |
| `echo` | Display or write text |
| `$(date)` | Execute the date command and capture its output |
| `>` | Redirect output into a file |
| `cat` | Display file contents |
| `|| exit 1` | Stop execution if the preceding command fails |

## Running the Script

Grant execution permissions:

```bash
chmod +x solution.sh
```

Execute the script:

```bash
./solution.sh
```

## Example Output

```text
This is a demo file created on Sat Sep 26 15:00:00 BST 2026
```

The date and time will depend on when the script is executed and the system's locale.

## Key Takeaways

This exercise reinforced my understanding of Linux file operations, command substitution and output redirection.

I also learnt how to combine individual Linux commands into a reusable Bash script and introduced basic error handling.