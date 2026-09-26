# Bash File Permissions

## Overview

This exercise demonstrates how Bash scripts can modify Linux file permissions using the `chmod` command.

The script grants the file owner executable permission and uses a conditional statement to verify that the target file exists.

## Concepts Practised

- Understanding Linux file permissions.
- Modifying permissions using `chmod`.
- Using symbolic permission notation.
- Checking whether files exist.
- Using conditional statements for basic error handling.
- Automating file permission changes.

## How the Script Works

The script checks whether `myfile.txt` exists in the current directory.

If the file exists, it executes:

```bash
chmod u+x myfile.txt
```

This grants executable permission to the file owner without changing the existing permissions of other users.

If the file does not exist, the script displays an error message.

## Running the Script

Create a sample file:

```bash
touch myfile.txt
```

Grant the script executable permissions:

```bash
chmod +x converter.sh
```

Execute the script:

```bash
./converter.sh
```

Check the resulting permissions:

```bash
ls -l myfile.txt
```

## Expected Output

```text
Permissions changed for myfile.txt
```

The file owner should now have executable permission.

## Key Takeaways

This exercise reinforced how Linux permissions can be managed using Bash scripts.

It also demonstrated how conditional statements can be used to check prerequisites before performing file operations.