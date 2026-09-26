# Bash Functions

## Overview

This exercise explores Bash functions and demonstrates how they can be used to organise scripts into reusable blocks of code.

The script contains several examples, progressing from basic functions to user input, conditional statements, error handling, file operations and checksum comparisons.

## Concepts Practised

- Declaring and calling Bash functions.
- Passing arguments to functions.
- Using local variables.
- Working with positional parameters.
- Capturing user input using `read`.
- Using conditional statements within functions.
- Validating input and returning exit codes.
- Using pipes and command substitution.
- Counting files.
- Calculating and comparing file checksums.

## Functions

### 1. hello_world()

A basic function that displays "Hello World" in the terminal.

Introduces function declaration and execution.

### 2. greet_person()

Accepts a name as an argument and stores it in a local variable.

Demonstrates positional parameters and variable scope.

### 3. print_arguments()

Displays information about the arguments supplied to the function.

Demonstrates `$#`, `$1`, `$2` and `$@`.

Note that `$0` represents the script name rather than the function name.

### 4. greet_user()

Uses the `read` command to capture a name entered by the user.

Displays a personalised greeting.

### 5. greet()

Combines local variables, user input and conditional statements.

Checks whether the user entered a name before displaying the greeting.

### 6. validate_age()

Accepts an age through user input.

Uses a regular expression to check whether the input contains only digits.

Conditional statements determine whether the user meets the minimum age requirement.

Returns a non-zero exit status when validation fails.

### 7. get_file_count()

Counts regular files in the current directory using `find` and `wc`.

Demonstrates command substitution and pipelines.

### 8. calculate_md5()

Calculates the MD5 checksum of a specified file.

Included to demonstrate checksum commands. MD5 is not suitable for security-sensitive integrity verification.

### 9. calculate_sha256()

Calculates the SHA-256 checksum of a specified file.

Demonstrates passing a filename to a function and generating a file checksum.

### 10. compare_checksums()

Accepts two checksum values as arguments.

Uses a conditional statement to determine whether they match.

For meaningful comparisons, both checksums should use the same algorithm.

## Running the Script

Give the script executable permissions:

```bash
chmod +x functions.sh
```

Ensure the required test files exist before running the checksum examples.

Execute the script:

```bash
./functions.sh
```

Some functions require interactive input, so the script will prompt for a name and age.

## Key Takeaways

This exercise demonstrated how functions improve code organisation and allow commands to be reused.

It also reinforced several previously covered Bash concepts, including variables, positional parameters, conditional statements, pipelines and command substitution.

The checksum exercises introduced file integrity verification and highlighted the importance of using consistent hashing algorithms.