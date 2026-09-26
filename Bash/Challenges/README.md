# Bash Scripting Challenges

## Overview

This directory contains practical Bash scripting challenges completed as part of my CoderCo DevOps learning journey.

The objective is to reinforce fundamental Bash concepts by solving practical problems and developing reusable automation scripts.

Each challenge focuses on applying previously learned concepts, including variables, user input, conditional statements, file operations and error handling.

As I complete each challenge, I will document my implementation, explain my approach and record what I learned.

---

## Challenge 1: Basic Arithmetic Calculator

**Objective:** Create a Bash script that accepts two numbers and performs basic arithmetic operations.

### Requirements

- Prompt the user for two numbers.
- Perform addition, subtraction, multiplication and division.
- Display the results of each calculation.
- Handle division by zero.

### Example Output

```text
Enter first number: 10
Enter second number: 5

Results:
10 + 5 = 15
10 - 5 = 5
10 × 5 = 50
10 ÷ 5 = 2
```

### Concepts

- Variables
- User input
- Arithmetic expansion
- Conditional statements
- Basic error handling

---

## Challenge 2: File Operations Script

**Objective:** Automate directory creation, file creation and writing data to a file.

### Requirements

- Create a directory called `bash_demo`.
- Navigate into the directory.
- Create a file called `demo.txt`.
- Write text to the file, including the current date.
- Display the file contents.

### Example Output

```text
Directory 'bash_demo' created.
File 'demo.txt' created.

File contents:
This file was created by a Bash script on 2024-11-29
```

### Concepts

- Directory management
- File creation
- Output redirection
- Command substitution
- Linux date command

---

## Challenge 3: File Checker with Permissions

**Objective:** Create a script that checks whether a file exists and displays its permissions.

### Requirements

- Prompt the user for a filename.
- Check whether the file exists.
- Determine whether the file is readable.
- Determine whether the file is writable.
- Determine whether the file is executable.
- Display an appropriate message for each permission.

### Example Output

```text
Enter filename to check: /etc/passwd

File '/etc/passwd' exists.
✓ File is readable
✓ File is writable
✗ File is not executable
```

The permissions reported will depend on the user executing the script and the permissions of the selected file.

### Concepts

- User input
- File test operators
- Conditional statements
- Linux file permissions

---

## Challenge 4: Backup Script for Text Files

**Objective:** Create a script that backs up all `.txt` files from a specified directory.

### Requirements

- Prompt the user for a source directory.
- Create a backup directory if it does not exist.
- Copy all `.txt` files into the backup directory.
- Include a timestamp in the backup directory name.
- Display the number of files successfully backed up.

### Example Output

```text
Enter source directory: /home/user/documents

Backup directory created: backup_2024-11-29_14-30

Copying .txt files...

Backup complete!
Files backed up: 5
```

### Concepts

- User input
- Directory validation
- File operations
- Timestamps
- File counting
- Basic backup automation

---

## Learning Objectives

By completing these challenges, I aim to:

- Improve my confidence writing Bash scripts independently.
- Develop practical Linux automation skills.
- Reinforce fundamental scripting concepts.
- Practise debugging and error handling.
- Document my learning through Git and GitHub.
- Build a foundation for more advanced DevOps automation projects.

## Progress

Each completed challenge will have its own directory containing the original Bash script and an accompanying README explaining the implementation, execution instructions and lessons learned.
