# Linux Exercise 05: Text Processing

## Objective

Practise using Linux text-processing utilities, including `grep`, `awk`, `sed` and pipelines, to search, filter and manipulate text.

This exercise forms part of the CoderCo DevOps Bootcamp.

## 1. Using AWK

I practised extracting information from `/etc/passwd` using `awk`.

```bash
cat /etc/passwd | awk -F: '{print $1, $6}'
```

The command displays usernames and their associated home directories.

- `-F:` specifies the colon as the field separator.
- `$1` represents the username.
- `$6` represents the home directory.

## 2. Using SED

I created a test file containing:

```text
I am learning old linux commands
```

I then used:

```bash
sed 's/old/new/g' file.txt
```

This displayed the modified text without changing the original file.

I verified this by running `cat file.txt` afterward.

I also created a file containing numbers from 1 to 30 and extracted a specific range:

```bash
seq 1 30 > numbers.txt
sed -n '10,20p' numbers.txt
```

This displayed lines 10–20.

## 3. Combining Commands with Pipes

I practised combining Linux utilities to filter system logs.

```bash
grep -i "error" /var/log/syslog |
awk '{print $1, $2, $3}' |
sort |
uniq
```

This pipeline:

1. Searches system logs for lines containing `error`, ignoring case.
2. Extracts the first three fields.
3. Sorts the results.
4. Removes duplicate lines.

## 4. Practical Challenge: Finding Bash Users

The challenge required me to identify accounts configured to use `/bin/bash`.

My initial approach was to display usernames and login shells using `awk`.

I then introduced a condition to filter accounts by their login shell.

The simplified command is:

```bash
awk -F: '$7 == "/bin/bash" {print $1}' /etc/passwd
```

My output identified the following accounts:

```text
root
guest
ronaldo
messi
```

This demonstrated how `awk` can filter structured text based on specific field values.

## 5. Key Learnings

1. `awk` extracts and filters fields from structured text.
2. `sed` can manipulate text without modifying the original file.
3. Pipes allow multiple Linux commands to work together.
4. `sort` and `uniq` can organise results and remove duplicates.
5. Combining Linux utilities is useful for processing logs and troubleshooting systems.

## Exercise Status

Completed.
