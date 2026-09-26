# Bash Environment Variables

## Overview

This exercise demonstrates how Bash scripts can access environment variables and use their values within a script.

Environment variables provide information about the current user, operating system, shell and execution environment.

Understanding environment variables is particularly useful when working with Linux systems, automation scripts and DevOps tools.

## Concepts Practised

- Accessing environment variables.
- Assigning environment values to Bash variables.
- Understanding variable expansion.
- Displaying environment information using `echo`.
- Understanding the purpose of common Linux environment variables.

## How the Script Works

The script accesses several predefined variables and assigns their values to corresponding script variables.

It then uses `echo` to display the information.

The variables explored include:

- `HOME`: The user's home directory.
- `USER`: The current username.
- `OSTYPE`: The operating system type reported by Bash.
- `LOGNAME`: The login username.
- `SHELL`: The user's configured shell.
- `PWD`: The current working directory.
- `PATH`: Directories used to locate executable commands.
- `LANG`: The current language and locale settings.

## Running the Script

Grant execution permissions:

```bash
chmod +x environment.sh
```

Execute the script:

```bash
./environment.sh
```

## Expected Behaviour

The script displays information about the environment in which it is executed.

The output will vary depending on the user, operating system and environment configuration.

## Key Takeaways

This exercise demonstrated how Bash scripts access existing environment information.

It also reinforced variable assignment and expansion while introducing environment variables commonly encountered when administering Linux systems and working with DevOps tools.