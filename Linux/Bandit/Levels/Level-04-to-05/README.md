# Bandit Level 4 → Level 5

## Challenge

Find the password for the next level. The password is stored in the only human-readable file inside the `inhere` directory.

## Commands Used

```bash
cd /home/bandit4/inhere
ls
file ./*
cat ./-file07
```

## Command Explanation

- `cd` navigates to the directory containing the challenge files.
- `ls` lists the ten available files.
- `file ./*` identifies the data type of every file in the current directory.
- `cat ./-file07` displays the contents of the file identified as ASCII text.

The `*` wildcard matches all filenames, while `./` prevents filenames beginning with hyphens from being interpreted as command options.

## Key Learning

I learned how to use the `file` command to distinguish human-readable text from other types of data.

Combining `file` with wildcards allowed me to inspect multiple files simultaneously instead of checking each file individually.

This technique is useful when investigating unfamiliar files in Linux.

## Password

`6C7h9GD8M6ai5nr7wIoRnrZFjj9yIrG`

## Status

Completed.
