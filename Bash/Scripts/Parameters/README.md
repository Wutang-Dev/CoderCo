# Bash Positional Parameters

## Overview

This exercise demonstrates how positional parameters allow Bash scripts to accept arguments supplied during execution.

Rather than hardcoding values, arguments can be passed directly to a script, making it more flexible and reusable.

## Concepts Practised

- Understanding positional parameters.
- Accessing arguments using `$1`, `$2` and `$3`.
- Using `$@` to access all supplied arguments.
- Passing arguments to Bash scripts through the terminal.
- Understanding how positional parameters make scripts dynamic.

## How the Script Works

The script accepts command-line arguments and displays the first three individually.

It then uses `$@` to display all supplied arguments.

Each positional parameter corresponds to the order in which arguments are provided when executing the script.

## Running the Script

Grant execution permissions:

```bash
chmod +x parameters.sh
```

Execute the script with three arguments:

```bash
./parameters.sh Linux Bash DevOps
```

## Expected Output

```text
Parameter 1: Linux
Parameter 2: Bash
Parameter 3: DevOps
All Parameters: Linux Bash DevOps
```

## Key Takeaways

This exercise demonstrated how Bash scripts accept external input through positional parameters.

Understanding positional parameters provides a foundation for creating reusable scripts that accept different values during execution.