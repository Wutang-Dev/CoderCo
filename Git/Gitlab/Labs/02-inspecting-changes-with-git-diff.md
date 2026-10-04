# Lab 02 - Inspecting Changes with Git Diff

## Objective

The purpose of this lab is to practise inspecting changes before committing them.

Git diff allows me to see exactly what has changed inside my files rather than only seeing that a file has been modified.

## Practice

This file will be modified several times during the lab so I can inspect the changes at different stages of the Git workflow.

This line was added to practise inspecting unstaged changes with `git diff`.

This change will be staged first.

This change was added after staging and is currently unstaged.

This change is being used to practise comparing my working directory directly against `HEAD`.

## Commands Used

### `git status`

Checks the current state of the repository and shows which changes are staged, unstaged or untracked.

```bash
git status
```

### `git diff`

Shows the changes I have made that have not been staged yet. It compares my working directory with the staging area.

```bash
git diff
```

### `git diff --staged`

Shows the changes that I have added to the staging area and are ready to be included in my next commit.

```bash
git diff --staged
```

### `git diff HEAD`

Shows all changes made since my latest commit, including both staged and unstaged changes.

```bash
git diff HEAD
```

### `git add`

Adds changes to the staging area ready to be included in the next commit.

```bash
git add 02-inspecting-changes-with-git-diff.md
```

### `git commit`

Creates a commit containing the changes currently in the staging area.

```bash
git commit -m "Add staged Git diff example"
```

### `git show`

Shows the latest commit and the changes that were included in it.

```bash
git show
```

### `git show --stat`

Shows a summary of the latest commit, including which files were changed and the number of insertions and deletions.

```bash
git show --stat
```

## Lessons Learned

`git diff` is used to see changes I have made that have not been staged yet.

`git diff --staged` shows the changes that have been added to the staging area and are ready to be included in the next commit.

`git diff HEAD` shows all of the changes made since the latest commit, including both staged and unstaged changes.

One of the main things I learned from this lab is that if I stage a file and then modify the same file again, Git can track both states separately. Git is not simply marking the entire file as staged. It keeps a snapshot of the changes that were staged while newer changes can remain unstaged.

This means I can use `git diff` and `git diff --staged` to check exactly which changes will be included in my next commit before I commit them.