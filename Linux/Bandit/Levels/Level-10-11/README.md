# Bandit Level 10 → Level 11

**Status:** Completed  
**Module:** CoderCo DevOps Bootcamp – Linux

## 1. Challenge Requirements

The objective was to retrieve the password for the next level from `data.txt`.

Unlike previous challenges, the password was stored as Base64-encoded data. I needed to identify the appropriate Linux command to decode the file.

## 2. Commands Used

**Final solution:**

```bash
base64 -d data.txt
```

The command successfully decoded the file and displayed the password required to access Level 11.

## 3. Command Explanation

| Command | Explanation |
|---|---|
| `base64` | A Linux utility used to encode and decode Base64 data. |
| `-d` | Specifies that the data should be decoded. |
| `data.txt` | The file containing the Base64-encoded password. |

## 4. Challenges and Discoveries

I explored the `base64` command and identified the `-d` option for decoding data.

I initially attempted to decode the file while logged into the wrong Bandit account, which resulted in an invalid input error.

After completing the previous challenge and logging into the correct account, I successfully decoded the password.

I also learned that Base64 is an encoding method rather than encryption. It does not provide confidentiality because anyone can decode the information without a secret key.

## 5. Key Learnings

- Understanding the purpose of Base64 encoding.
- Decoding Base64 data using Linux commands.
- Recognising the difference between encoding and encryption.
- Verifying the current Linux environment when troubleshooting.
- Understanding how encoded data can be inspected using command-line utilities.

**Outcome:** Successfully decoded the password and completed Level 10 → 11.
