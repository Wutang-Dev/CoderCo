# Bandit Level 8 → Level 9

**Status:** Completed  
**Module:** CoderCo DevOps Bootcamp – Linux

## 1. Challenge Requirements

The objective was to locate a password stored in `data.txt`.

The file contained multiple lines of text, but only one line appeared exactly once. That unique line contained the password for the next level.

## 2. Commands Used

**Final solution:**

```bash
sort data.txt | uniq -u
```

The command successfully returned the password required to access Level 9.

## 3. Command Explanation

| Command | Explanation |
|---|---|
| `sort data.txt` | Sorts the file, placing identical lines next to each other. |
| `\|` | Pipes the output of the first command into the second command. |
| `uniq -u` | Displays only lines that occur exactly once. |

## 4. Challenges and Discoveries

Initially, I explored the `uniq` manual to understand its available options.

I discovered that:

- `uniq -c` displays each distinct line with its occurrence count.
- `uniq -u` displays only lines that occur once.

I selected `uniq -u` because the challenge required identifying a single unique line.

I also learned that `uniq` only compares adjacent lines. Therefore, sorting the file first was essential to ensure identical lines were grouped together.

By combining both commands using a pipe, I successfully retrieved the password.

## 5. Key Learnings

- Using `sort` to organise text data.
- Understanding the difference between `uniq -c` and `uniq -u`.
- Combining Linux commands using pipes.
- Reading Linux manual pages to identify appropriate command options.
- Processing text files without manually searching through hundreds of lines.

**Outcome:** Successfully retrieved the password and completed Level 8 → 9.
