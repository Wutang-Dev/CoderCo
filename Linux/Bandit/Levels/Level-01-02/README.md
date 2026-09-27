# Bandit Level 1 → Level 2

## Challenge

Find the password for the next level. The password is stored in a file named `-` in the home directory.

## Commands Used

```bash
ls
ls -l
pwd
cat ./-
```

## Command Explanation

- `ls` lists the contents of the current directory.
- `ls -l` displays detailed file information.
- `pwd` confirms the current working directory.
- `cat ./-` displays the contents of the file named `-`.

The `./` prefix specifies the current directory, allowing `cat` to distinguish the filename from its special use of `-` for standard input.

## Key Learning

I learned how to use relative paths to access files with unusual names. This is useful when working with filenames that could otherwise be interpreted as command arguments or special characters.

## Password

`PK8fYLzg2nhHSz83ptBL1iEPkdD3QToB`

## Status

Completed.
