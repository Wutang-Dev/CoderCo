# Bandit Level 6 → Level 7

**Status:** Completed  
**Module:** CoderCo DevOps Bootcamp – Linux

## 1. Challenge Requirements

The objective was to locate a password stored somewhere on the Bandit server.

The file had to meet three conditions:

- Owned by user `bandit7`.
- Owned by group `bandit6`.
- Exactly 33 bytes in size.

## 2. Commands Used

**Final solution:**

```bash
find / -user bandit7 -group bandit6 -size 33c 2> /dev/null
```

The command returned:

```text
/var/lib/dpkg/info/bandit7.password
```

I then read the file using:

```bash
cat /var/lib/dpkg/info/bandit7.password
```

This revealed the password required to access the next level.

## 3. Command Explanation

| Command | Explanation |
|---|---|
| `find /` | Searches the entire Linux filesystem, starting from the root directory. |
| `-user bandit7` | Filters files by their owner. |
| `-group bandit6` | Filters files by their group ownership. |
| `-size 33c` | Finds files that are exactly 33 bytes in size. |
| `2> /dev/null` | Redirects error messages to `/dev/null`, preventing permission errors from cluttering the terminal. |
| `cat` | Displays the contents of the password file. |

## 4. Challenges and Discoveries

Initially, I encountered syntax errors when constructing the `find` command. This helped me understand that the search path must come before the search conditions and that command options must be written correctly.

I also attempted to use `sudo`, but discovered that my Bandit account did not have administrator privileges.

After correcting the command, I used `2> /dev/null` to discard permission errors while preserving successful search results.

Finally, I attempted to navigate into the password file using `cd`. I recognised that the result was a file rather than a directory and used `cat` to read it.

## 5. Key Learnings

1. Searching the entire filesystem using `find`.
2. Combining multiple search conditions to locate a specific file.
3. Understanding Linux file ownership and group ownership.
4. Redirecting standard error without discarding successful command output.
5. Distinguishing between files and directories.

**Outcome:** Successfully located the password file and completed Level 6 → 7.
