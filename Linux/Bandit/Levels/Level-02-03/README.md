# Bandit Level 2 → Level 3

## Challenge

Find the password for the next level. The password is stored in a file named `--spaces in this filename--`.

## Commands Used

```bash
ls
cat ./"--spaces in this filename--"
```

## Command Explanation

- `ls` lists the files in the current directory.
- `cat` displays the contents of a file.
- `./` specifies the current directory, preventing the leading hyphens in the filename from being interpreted as command options.
- Quotation marks ensure the filename, including its spaces, is treated as one argument.

## Key Learning

I learned how to access files containing spaces and filenames beginning with hyphens by combining relative paths with quotation marks.

This is particularly useful when working with unusual filenames in Linux.

## Password

`7722LFrykP2zEyvBl4m3clcL7tGYJPME`

## Status

Completed.
