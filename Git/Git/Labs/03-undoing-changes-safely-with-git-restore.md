# Lab 03 - undoing changes Safely with git restore

## Objectives 

The purpose of this lab is to practice safely undoing changes at different stages of the Git workflow .

This lab will build on my understanding of the working directory, staging area and `HEAD` from Lab 02.  

## Practice 

I will intentonally make changes and mistakes so I can practice restoring files and removing from the staging area. 

This change was accidentally added to the staging area.

This change was accidentally added to the staging area.

## Lessons Learned

- `git restore <file>` discards unstaged changes and restores the file to its previous state.
- `git restore --staged <file>` removes changes from the staging area but keeps the changes in the working directory.
- `git revert <commit>` undoes the changes introduced by a specific commit by creating a new commit.
- `git revert` does not delete the original commit from the Git history.
- A file can be removed from the staging area without losing the changes made to the file.
- I should use `git status` and `git diff` before restoring changes so I understand what I am about to discard.
- `git diff --staged` can be used to check what is currently in the staging area before removing or committing it.

## Commands Used

```bash
git status
git diff
git diff --staged
git add <file>
git commit -m "commit message"
git restore <file>
git restore --staged <file>
git revert <commit>
git log --oneline -5
tail <file>