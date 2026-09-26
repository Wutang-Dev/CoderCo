# Linux Exercise 01: Environment Setup

## Objective

The objective of this exercise is to verify my Linux environment and practise basic system identification commands.

This exercise forms part of the Linux module of the CoderCo DevOps Bootcamp.

## My Lab Environment

- **Virtualisation platform:** Proxmox VE
- **Operating system:** Ubuntu Server
- **Hostname:** ubuntu-server-vm
- **Linux kernel:** 6.8.0-142-generic
- **Architecture:** x86_64
- **Username:** ravi
- **Remote access:** SSH and Visual Studio Code Remote-SSH

## Commands Used

### 1. Display System Information

```bash
uname -a
```

This command displays information about the operating system, Linux kernel, hostname and system architecture.

My output confirmed that I was running Linux kernel version `6.8.0-142-generic` on an `x86_64` system.

### 2. Identify the Current User

```bash
whoami
```

This command displays the username associated with my current effective user.

My output:

```text
ravi
```

This is useful when troubleshooting permissions or verifying which account is executing commands.

### 3. Display the Current Working Directory

```bash
pwd
```

This command prints the absolute path of the current working directory.

My output:

```text
/home/ravi/CoderCo/github/CoderCo/Linux/Exercises/01-Environment-Setup
```

This is useful when navigating Linux directories and working with relative file paths.

## Key Learnings

1. `uname -a` provides information about the Linux system and kernel.
2. `whoami` identifies the current effective user.
3. `pwd` displays the absolute path of the current working directory.
4. Understanding my environment is an important first step when administering Linux systems or troubleshooting issues.

## Exercise Status

Completed.
