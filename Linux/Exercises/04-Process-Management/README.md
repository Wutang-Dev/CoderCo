# Linux Exercise 04: Process Management

## Objective

Learn how to identify, monitor and manage Linux processes using command-line utilities.

This exercise forms part of the CoderCo DevOps Bootcamp.

## 1. Viewing Running Processes

I used the following command to display processes running on my Ubuntu Server VM:

```bash
ps aux
```

This command provides information about running processes, including their process IDs (PIDs), owners, CPU usage, memory usage and commands.

I also practised filtering the output using `grep`:

```bash
ps aux | grep ssh
ps aux | grep nginx
```

The SSH search displayed processes associated with SSH and Tailscale.

The Nginx search only returned the `grep` command, indicating that no matching Nginx process was visible.

## 2. Real-Time System Monitoring

I used `top` to monitor my Ubuntu Server VM:

```bash
top
```

During the exercise, I observed approximately:

- 496 tasks.
- 1.97 GiB of total RAM.
- 1.5 GiB of RAM in use.
- Very low CPU utilisation.

This demonstrated how `top` provides real-time information about system resources and running processes.

## 3. Managing Background Processes

I started a background process:

```bash
sleep 300 &
```

The terminal returned:

```text
[1] 11449
```

The number `[1]` represents the shell's job number, while `11449` was the process ID.

I identified the background process using:

```bash
jobs -l
ps aux | grep sleep
```

Both commands helped me identify the process.

## 4. Terminating a Process

I started another background process:

```bash
sleep 300 &
```

The terminal returned:

```text
[2] 11459
```

I terminated the second process using:

```bash
kill 11459
```

I then verified the result:

```bash
jobs -l
ps aux | grep sleep
```

The terminal confirmed that PID `11459` had terminated, while the original process, PID `11449`, remained running.

This demonstrated how processes can be identified and terminated individually using their PIDs.

## 5. Challenges and Discoveries

During the exercise, I initially mistyped `jobs -l` as `jons -l`.

After correcting the command, I successfully identified my background process.

I also learned that `grep` can appear in its own search results when filtering process output.

Another useful discovery was the difference between a shell job number and a process ID.

## 6. Key Learnings

1. `ps aux` displays information about running processes.
2. `grep` can filter process output to locate specific commands.
3. `top` provides real-time information about system resource usage.
4. Adding `&` starts a command in the background.
5. `jobs -l` identifies background jobs and their PIDs.
6. `kill` can terminate a specific process using its PID.

## Exercise Status

Completed.
