## My Implementation

I developed a Bash script that accepts a filename from the user and checks whether the specified path exists.

If the path exists, the script performs three additional checks to determine whether it is readable, writable and executable.

I used nested conditional statements to ensure that the permission checks only execute when the specified path exists.

### How It Works

1. The script prompts the user for a filename using `read -r`.
2. An `if` statement checks whether the path exists using `-e`.
3. If the path exists, three additional conditional statements check its permissions.
4. Each conditional statement displays an appropriate message.
5. If the path does not exist, the script displays an error message.

### Bash Operators Used

| Operator | Purpose |
|---|---|
| `-e` | Checks whether a path exists |
| `-r` | Checks whether the current user can read it |
| `-w` | Checks whether the current user can write to it |
| `-x` | Checks whether the current user can execute it, or access it if it is a directory |

### Testing

I tested the script using existing files, nonexistent filenames and files with different permissions.

Example:

```bash
./solution.sh
```

```text
Please enter a filename:
test.txt
File 'test.txt' exists.
File 'test.txt' is readable.
File 'test.txt' is writable.
File 'test.txt' is not executable.
```

Actual results depend on the permissions and the user executing the script.

## Lessons Learned

This challenge reinforced my understanding of Bash conditional statements and Linux file-test operators.

I practised combining multiple conditional statements to inspect file permissions and handling situations where a specified file does not exist.

These techniques are useful when developing automation scripts that need to verify file accessibility before performing operations.