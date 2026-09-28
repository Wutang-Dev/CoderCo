# Bandit Level 9 → Level 10

**Status:** Completed  
**Module:** CoderCo DevOps Bootcamp – Linux

## 1. Challenge Requirements

The objective was to locate a password stored inside `data.txt`.

The file contained binary data, and the password was hidden among a small number of human-readable strings, preceded by several `=` characters.

## 2. Commands Used

**Final solution:**

```bash
strings data.txt | grep "==="
```

The command returned several matching lines, including the password required to access Level 10.

## 3. Command Explanation

| Command | Explanation |
|---|---|
| `strings data.txt` | Extracts human-readable text from the file. |
| `\|` | Passes the output of the first command to the second command. |
| `grep "==="` | Filters the extracted text to display lines containing three consecutive equals signs. |

## 4. Challenges and Discoveries

Initially, I attempted to use `grep` but accidentally typed `grepp`.

After correcting the typo, I explored searching for the `=` character.

However, the challenge specified that the password was preceded by several equals signs. I therefore refined my search pattern to `===` to narrow down the results.

By combining `strings` and `grep` using a pipe, I successfully identified the password.

I also learned that `strings` is particularly useful when inspecting files that contain binary data.

## 5. Key Learnings

- Extracting readable text from binary files using `strings`.
- Filtering command output using `grep`.
- Combining commands with pipes.
- Refining search patterns to narrow down results.
- Troubleshooting command syntax errors.

**Outcome:** Successfully retrieved the password and completed Level 9 → 10.
