# Incident 03 - Ubuntu Server Disk Full Due to Syslog Growth

## Issue

While working on a Git lab, I attempted to create a commit and received the following error:

```text
fatal: unable to write loose object file: No space left on device
```

This indicated that my Ubuntu Server VM had run out of disk space.

## Initial Investigation

I first checked the filesystem usage:

```bash
df -h
```

The root filesystem `/dev/mapper/ubuntu--vg-ubuntu--lv` was at 100% usage.

Approximately 29 GB of the 30 GB filesystem was being used.

I also checked the available space in the LVM volume group:

```bash
sudo vgs
```

This showed that there was no additional free space available in the volume group, so I could not simply extend the logical volume.

## Finding What Was Using the Disk Space

Instead of immediately deleting files, I investigated which directories were consuming the storage.

I ran:

```bash
sudo du -xhd1 / 2>/dev/null | sort -h
```

This showed that `/var` was using approximately 24 GB.

I then investigated `/var`:

```bash
sudo du -xhd1 /var 2>/dev/null | sort -h
```

The output showed that `/var/log` was using approximately 23 GB.

This narrowed the problem down from the entire filesystem to the system logs.

## Investigating `/var/log`

I inspected the files inside `/var/log`:

```bash
sudo du -ah /var/log 2>/dev/null | sort -h | tail -30
```

The main files consuming the space were:

```text
12G /var/log/syslog
11G /var/log/syslog.1
```

Together, these two files were consuming approximately 23 GB of disk space.

I also checked the systemd journal:

```bash
sudo journalctl --disk-usage
```

The journal was only using approximately 400 MB, confirming that it was not responsible for most of the disk usage.

## Investigating the Logs

I inspected the recent system logs and found a large number of messages involving `tailscaled`.

I checked recent Tailscale activity with:

```bash
sudo journalctl -u tailscaled --since "10 minutes ago" | tail -50
```

I also counted the number of Tailscale log entries generated during that period:

```bash
sudo journalctl -u tailscaled --since "10 minutes ago" | wc -l
```

This returned:

```text
13
```

At the time of investigation, Tailscale was therefore not generating an unusually large number of new messages.

The logs also contained errors from `rsyslog` reporting that it could no longer write to `/var/log/syslog` because there was no space left on the device.

## Recovering Disk Space

The rotated `/var/log/syslog.1` file was approximately 11 GB and contained historical logs.

I removed this file:

```bash
sudo rm /var/log/syslog.1
```

I then checked the filesystem again:

```bash
df -h /
```

The root filesystem now showed approximately:

```text
Size: 30G
Used: 18G
Available: 11G
Use: 62%
```

This immediately recovered enough disk space for the VM to operate normally again.

## Checking the Active Syslog

The active `/var/log/syslog` file was still very large, so I cleared its contents while keeping the file itself:

```bash
sudo truncate -s 0 /var/log/syslog
```

I checked the filesystem again:

```bash
df -h /
```

The result was approximately:

```text
Size: 30G
Used: 6.0G
Available: 23G
Use: 22%
```

I then confirmed the size of the active syslog:

```bash
sudo du -h /var/log/syslog
```

The file had been reduced to a few KB.

## Verifying the Logging Service

I checked that `rsyslog` was still running:

```bash
sudo systemctl status rsyslog --no-pager
```

The service showed:

```text
Active: active (running)
```

I then inspected the latest entries being written to the log:

```bash
sudo tail -n 30 /var/log/syslog
```

New log entries were being written normally, confirming that clearing the oversized log had not stopped the logging service.

## Root Cause

The immediate cause of the incident was excessive growth of the files:

```text
/var/log/syslog
/var/log/syslog.1
```

These files had grown to approximately 23 GB combined and filled the VM's 30 GB root filesystem.

This caused Git to fail when it attempted to write new objects because there was no remaining filesystem space.

The investigation showed a large amount of Tailscale-related logging in the system logs, although the later checks did not show Tailscale continuing to generate logs at an unusually high rate.

Therefore, I could confirm that excessive syslog growth caused the disk-full condition, but I could not conclusively identify a single service as the original cause of the abnormal log growth.

## Resolution

The issue was resolved by:

1. Identifying `/var/log` as the main consumer of disk space.
2. Identifying `syslog` and `syslog.1` as the largest files.
3. Removing the oversized rotated `syslog.1`.
4. Truncating the active `syslog` file.
5. Confirming that `rsyslog` remained active.
6. Confirming that new log entries were being written normally.
7. Verifying that filesystem usage had fallen from 100% to approximately 22%.

## Commands Used

```bash
df -h
sudo vgs
sudo du -xhd1 / 2>/dev/null | sort -h
sudo du -xhd1 /var 2>/dev/null | sort -h
sudo du -ah /var/log 2>/dev/null | sort -h | tail -30
sudo journalctl --disk-usage
sudo journalctl -u tailscaled --since "10 minutes ago" | tail -50
sudo journalctl -u tailscaled --since "10 minutes ago" | wc -l
sudo rm /var/log/syslog.1
sudo truncate -s 0 /var/log/syslog
sudo du -h /var/log/syslog
df -h /
sudo systemctl status rsyslog --no-pager
sudo tail -n 30 /var/log/syslog
```

## Lessons Learned

- `df -h` shows filesystem usage and helped confirm that the root filesystem was full.
- `du` can be used to work down through directories and identify where disk space is actually being consumed.
- A filesystem being full does not necessarily mean that the VM needs a larger disk. It is important to find out what is consuming the storage first.
- `/var/log` can consume a large amount of disk space if log files grow unexpectedly.
- `journalctl --disk-usage` helped rule out the systemd journal as the main cause.
- Large log files can prevent applications such as Git from writing data even when the application itself is working correctly.
- `truncate -s 0` can clear the contents of an active log file while keeping the file in place for the logging service.
- After cleaning up logs, I should verify both the available disk space and that the logging service is still operating correctly.
- Troubleshooting from the filesystem level down to individual directories and files is safer than immediately deleting files when a disk becomes full.
- I should continue monitoring `/var/log` to make sure the abnormal growth does not return.