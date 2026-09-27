# Bandit Level 3 → Level 4

## Challenge

Find the password for the next level, stored in a hidden file inside the `inhere` directory.

## Commands Used

```bash
ls
cd inhere
ls
ls -l
ls -la
cat ...Hiding-From-You
```

## Command Explanation

- `ls` lists visible files and directories.
- `cd inhere` navigates into the directory containing the password.
- `ls -l` displays detailed information about visible files.
- `ls -la` displays detailed information about all files, including hidden files.
- `cat ...Hiding-From-You` displays the contents of the hidden file.

## Key Learning

I learned that Linux filenames beginning with a dot are hidden from ordinary directory listings.

Using `ls -la` allows me to identify hidden files and inspect their permissions, ownership and other details.

This is useful when troubleshooting Linux systems or locating hidden configuration files.

## Password

`xzTXq1rDJQVVAzdv5cHq1TQytTWufAMq`

## Status

Completed.
