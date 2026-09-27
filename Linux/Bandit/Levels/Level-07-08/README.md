# Bandit Level 7 → Level 8

**Status:** Completed  
**Module:** CoderCo DevOps Bootcamp – Linux

## 1. Challenge Requirements

The objective was to locate the password stored in `data.txt` next to the word `millionth`.

This challenge focused on searching for specific text within a file.

## 2. Commands Used

First, I explored using `grep` to search the entire Linux filesystem:

```bash
grep -Ril "millionth" /
```

However, the challenge already specified the filename, making a recursive search unnecessary.

**Final solution:**

```bash
grep "millionth" data.txt
```

This returned the line containing `millionth` and the password required for the next level.

## 3. Command Explanation

| Command | Explanation |
|---|---|
| `grep` | Searches for text matching a specified pattern. |
| `"millionth"` | The word I needed to find. |
| `data.txt` | The file containing the password. |
| `-R` | Recursively searches directories. |
| `-i` | Makes searches case-insensitive. |
| `-l` | Displays matching filenames instead of matching lines. |

## 4. Challenges and Discoveries

Initially, I constructed a command that searched the entire filesystem recursively.

I realised that this was unnecessary because the challenge provided the exact filename.

I simplified the command by removing the additional options and specifying `data.txt` directly.

This allowed me to display the matching line rather than just the filename.

## 5. Key Learnings

- Using `grep` to search for specific text within files.
- Understanding common `grep` options.
- Recognising when recursive searches are unnecessary.
- Writing simpler, more efficient Linux commands.

**Outcome:** Successfully retrieved the password and completed Level 7 → 8.
