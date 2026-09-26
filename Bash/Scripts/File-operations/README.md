# Bash File Operations

## Overview

This exercise demonstrates how to read and process a text file line by line using a Bash function and a `while` loop.

The script uses a local variable to store the file path and input redirection to supply the file's contents to the loop.

## Concepts Practised

- Creating reusable Bash functions.
- Passing file paths as function arguments.
- Declaring local variables.
- Reading files using `while` loops.
- Using `IFS` and the `read` command.
- Understanding input redirection.
- Checking whether files exist and are readable.
- Basic error handling.

## How the Script Works

The `read_file()` function accepts a file path as its first argument.

It checks whether the specified file exists and is readable.

The script then uses a `while` loop to process the file line by line, displaying each line in the terminal.

Using `IFS= read -r` preserves leading and trailing whitespace and prevents backslashes from being interpreted.

The additional condition ensures that the final line is processed even if the file does not end with a newline character.

## Running the Script

Grant execution permissions:

```bash
chmod +x file-operations.sh
```

Create a sample log file:

```bash
printf '%s\n' \
    "INFO: Application started" \
    "INFO: Database connected" \
    "WARNING: High memory usage" \
    "ERROR: Connection timeout" > log.txt
```

Execute the script:

```bash
./file-operations.sh
```

## Expected Output

```text
INFO: Application started
INFO: Database connected
WARNING: High memory usage
ERROR: Connection timeout
```

## Key Takeaways

This exercise demonstrated how Bash can process files line by line using functions, loops and input redirection.

It also introduced basic file validation and reinforced the importance of handling errors before processing files.