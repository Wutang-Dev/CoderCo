# Linux Exercise 02: File System Navigation

## Objective

Practise navigating the Linux filesystem, managing files and directories, and viewing system files using essential Linux commands.

This exercise forms part of the CoderCo DevOps Bootcamp.

## 1. Navigating the Linux Filesystem

I practised navigating my Ubuntu Server VM using the terminal, exploring directories and identifying my current location.

### Commands

```bash
cd /
ls
cd /var/log
ls -la
pwd
```

I started at the root directory (`/`), explored its contents and navigated to `/var/log` to examine the available system logs.

I also practised navigating back to my CoderCo GitHub repository using relative paths.

### Understanding Absolute and Relative Paths

During this exercise, I initially attempted:

```bash
cd /Linux/Exercises/02-File-System
```

This failed because the leading `/` tells Linux to search from the root directory rather than my current directory.

After navigating to my CoderCo repository, I successfully used:

```bash
cd Linux
cd Exercises
cd 02-File-System
```

This reinforced my understanding of the difference between absolute and relative paths.

## 2. File and Directory Management

The following commands are covered in this section of the assignment.

```bash
touch test.txt
mkdir -p projects/demo
cp test.txt projects/demo/
mv projects/demo/test.txt projects/demo/backup.txt
rm projects/demo/backup.txt
```

These commands demonstrate how to create files and directories, copy files, rename them and remove files that are no longer needed.

## 3. Viewing System Files

The assignment also introduces several commands for examining system files and logs.

```bash
cat /etc/passwd
less /var/log/syslog
head -n 20 /etc/services
tail -f /var/log/auth.log
```

These commands are useful for inspecting system information and troubleshooting Linux environments.

For example, `/etc/passwd` contains user account information, while `/var/log` contains system and application logs.

## 4. Five Useful Linux Commands

| Command | Purpose |
|---|---|
| `cd` | Changes the current working directory. |
| `ls -lah` | Lists files, including hidden files, with detailed information and human-readable sizes. |
| `pwd` | Displays the absolute path of the current working directory. |
| `mkdir -p` | Creates directories, including missing parent directories. |
| `less` | Opens files for viewing without modifying their contents. |

## 5. Key Learnings

1. The Linux filesystem starts at the root directory (`/`).
2. Absolute paths begin at the root directory, while relative paths depend on the current working directory.
3. The `ls` command supports options that provide additional information about files and directories.
4. Linux provides dedicated commands for creating, copying, renaming and deleting files.
5. System logs provide useful information when investigating Linux issues.

## Exercise Status

 completed.


