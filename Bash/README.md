# Bash Scripting | CoderCo DevOps

## Overview

This directory documents my Bash scripting journey as part of the CoderCo DevOps bootcamp.

My objective is to develop practical Linux automation skills, strengthen my understanding of Bash and apply these concepts to real-world DevOps scenarios.

The repository contains foundational scripting exercises and four practical challenges. Each exercise includes its Bash script and accompanying documentation explaining its purpose, implementation and key concepts.

---

## 1. Bash Scripting Exercises

The [Scripts](Scripts/) directory contains my foundational Bash exercises.

| Exercise | Description |
|---|---|
| Variables | Working with variables, strings and arrays. |
| Arithmetic | Performing calculations using Bash arithmetic expansion. |
| If Statements | Implementing conditional logic and nested statements. |
| For Loops | Automating repetitive operations using `for` loops. |
| While Loops | Using condition-controlled loops and counters. |
| Parameters | Passing command-line arguments to scripts. |
| Functions | Creating reusable functions, processing arguments and performing file operations. |
| File Operations | Reading and processing text files line by line. |
| Environment | Accessing and displaying Linux environment variables. |
| Converter | Modifying file permissions using `chmod`. |
| Break and Continue | Controlling loop execution using conditional statements and `continue`. |

Each exercise has its own directory containing the original script and a README explaining the concepts demonstrated and how to execute it.

---

## 2. Practical Bash Challenges

The [Challenges](Challenges/) directory contains four practical exercises that combine previously learned Bash concepts.

| Challenge | Description |
|---|---|
| [Arithmetic Calculator](Challenges/01-Arithmetic-Calculator/) | An interactive calculator performing basic arithmetic operations with division-by-zero handling. |
| [File Operations](Challenges/02-File-Operations/) | Automates directory creation, file creation and writing the current date to a text file. |
| [File Permissions](Challenges/03-File-Permissions/) | Checks whether a file exists and determines its read, write and execute permissions. |
| [Backup Script](Challenges/04-Backup-Script/) | Creates timestamped backups of text files from a user-specified directory. |

Each challenge contains my Bash solution and a README documenting its implementation, execution instructions and lessons learned.

---

## 3. Five Key Learnings

### 1. Variables and User Input

I learned how to store and manipulate information using Bash variables and capture user input with the `read` command.

I also practised positional parameters to make scripts more flexible and reusable.

### 2. Conditional Statements and Error Handling

I used `if`, `elif` and `else` statements to control script execution.

My calculator and file permissions challenges reinforced the importance of validating conditions before performing operations.

### 3. Loops and Automation

I practised `for` and `while` loops to automate repetitive tasks.

I also explored `continue` to skip specific iterations and learned the importance of updating counters correctly to avoid infinite loops.

### 4. Functions and Reusable Code

I learned how to organise scripts into reusable functions, pass arguments and use local variables.

My functions exercises combined several Bash concepts, including user input, conditional statements, file operations and checksums.

### 5. Linux File Operations

I practised creating directories, managing files, changing permissions and processing text files.

My backup challenge combined several of these concepts into a practical automation exercise.

---

## 4. A Challenge I Encountered

One challenge I encountered while learning Bash was understanding how functions, local variables and positional parameters work together.

Initially, I found it difficult to understand how information could be passed into a function and how variables behaved within it.

Through practical exercises, I experimented with passing arguments using `$1` and `$2`, declaring variables using `local` and calling functions with different values.

I also practised combining functions with conditional statements, user input and Linux commands.

These exercises helped strengthen my understanding of reusable code and demonstrated how breaking larger scripts into smaller functions can make automation easier to organise and maintain.

---

## 5. Why Bash Matters in DevOps

Bash is an important foundation for working with Linux systems and automating infrastructure tasks.

It allows engineers to combine Linux commands into reusable scripts, reducing repetitive manual work and improving consistency.

Practical DevOps applications include:

- Automating Linux administration tasks.
- Processing application logs.
- Managing files, permissions and backups.
- Automating application deployment tasks.
- Running commands within CI/CD pipelines.
- Supporting infrastructure provisioning and configuration.

Developing Bash skills will help me progress towards more advanced DevOps topics, including Docker, AWS, Terraform and CI/CD.

---

## 6. Next Steps

My next objective is to apply these Bash fundamentals to more practical automation projects.

I plan to revisit my existing scripts, improve their error handling and develop projects that combine Bash with other technologies covered throughout the CoderCo bootcamp.

This repository will continue to document my progress as I develop my Linux and DevOps engineering skills.