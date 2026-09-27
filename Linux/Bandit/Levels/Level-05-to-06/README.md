# Bandit Level 5 → Level 6

## Challenge

Find the password stored in a file somewhere inside the `inhere` directory.

The file must meet three requirements:

- Be human-readable.
- Be exactly 1,033 bytes.
- Not be executable.

## Commands Used

```bash
cd inhere
ls
file ./*
find . -size 1033c ! -executable
cat ./maybehere07/.file2
```

## Command Explanation

- `cd inhere` navigates into the challenge directory.
- `ls` displays the available directories.
- `file ./*` identifies the file types of the immediate directory entries.
- `find .` searches recursively from the current directory.
- `-size 1033c` filters results to exactly 1,033 bytes.
- `! -executable` excludes executable files.
- `cat` displays the contents of the matching file.

The `find` command identified `./maybehere07/.file2`, which contained the password.

## Key Learning

I practised combining multiple conditions with `find` to locate a specific file within several directories.

I also reinforced my understanding of relative paths and hidden files.

Although the search identified the correct file, my command did not explicitly verify that it was human-readable. The subsequent `cat` command confirmed that I could read its contents.

An additional improvement would be to include `-type f` to restrict the search to regular files.

## Password

`pXa26xhMWac2SvDotA4l9EgZkuIoeSBW`

## Status

Completed.
