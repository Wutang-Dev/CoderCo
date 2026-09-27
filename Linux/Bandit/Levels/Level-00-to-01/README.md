# Bandit Level 0 → Level 1

## Challenge

Connect to the OverTheWire Bandit server using SSH and locate the password required to access Level 1.

## Commands Used

**Connecting to Bandit:**

```bash
ssh bandit0@bandit.labs.overthewire.org -p 2220
```

**Finding the password:**

```bash
ls
cd readme
cat readme
```

## Command Explanation

- `ssh` establishes a remote connection to the Bandit server.
- `-p 2220` specifies the SSH port.
- `ls` lists the files and directories in the current location.
- `cat readme` displays the contents of the `readme` file, revealing the password for Level 1.

## Challenges and Discoveries

After listing the directory contents, I initially attempted to navigate into `readme` using `cd`.

This returned a `Not a directory` error because `readme` is a file rather than a directory.

I corrected my approach by using `cat` to display the file's contents.

This reinforced my understanding of the difference between navigating directories and reading files in Linux.

## Password

6y2kwnwK6grgvwvpvLaa2T1cpFEKOhNR
