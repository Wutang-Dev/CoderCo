# Linux Exercise 03: Permissions and Ownership

## Objective

Understand Linux file permissions, manage file ownership and practise troubleshooting permission-related errors.

This exercise forms part of the CoderCo DevOps Bootcamp.

## 1. Creating and Executing a Bash Script

I created a Bash script named `hello.sh` containing:

```bash
#!/bin/bash

echo "Hello World , I am learning Devops"
```

I used the following commands to inspect its permissions, make it executable and run it:

```bash
ls -l hello.sh
sudo chmod +x hello.sh
./hello.sh
```

The script executed successfully and displayed my message.

I initially needed `sudo` because the file was owned by root.

## 2. Troubleshooting File Ownership

While setting up the exercise, I encountered permission errors when attempting to create directories and files.

I investigated the problem using:

```bash
ls -l
ls -ld .
ls -ld ..
```

These commands revealed that my exercise directory, its parent directory and the files I created were owned by root.

I had used `sudo mkdir` after encountering an initial permission error, which resulted in root owning the new directory.

To resolve the ownership problem, I executed:

```bash
sudo chown -R ravi:ravi .
```

This recursively changed ownership of my current exercise directory and its contents.

I verified the result using:

```bash
ls -l
```

Both `hello.sh` and `README.md` were subsequently owned by my user account.

An additional discovery was that `chown` requires a target. My first attempt failed because I omitted the final `.` representing the current directory.

## 3. Understanding Linux Permissions

Linux permissions are divided into three categories:

- Owner
- Group
- Others

Each category can have read, write and execute permissions.

| Permission | Numerical value |
|---|---:|
| Read (r) | 4 |
| Write (w) | 2 |
| Execute (x) | 1 |

For example, `755` represents:

- Owner: Read, write and execute.
- Group: Read and execute.
- Others: Read and execute.

## 4. Practical Permissions Challenge

The challenge required me to create a file that I could read and write while allowing everyone else read-only access.

I created `test.txt` and applied the following permissions:

```bash
chmod 644 test.txt
```

I verified the result using:

```bash
ls -l
```

The output confirmed:

```text
-rw-r--r-- 1 ravi ravi 0 Sep 27 07:39 test.txt
```

The numerical permission `644` provides:

- Owner: Read and write.
- Group: Read only.
- Others: Read only.

Nobody has execution permissions.

## 5. Key Learnings

1. `chmod` modifies file permissions.
2. `chown` changes file ownership.
3. The `-R` option applies ownership changes recursively.
4. File ownership and permissions determine which users can modify or execute files.
5. Using `sudo` can resolve permission errors temporarily, but investigating the underlying ownership problem is important.

## Exercise Status

Completed.
