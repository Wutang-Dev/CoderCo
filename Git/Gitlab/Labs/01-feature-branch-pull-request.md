# Lab 01 - Feature Branch and Pull Request

## Objective

The purpose of this lab is to practise a Git feature branch workflow rather than making changes directly on `main`.

The lab covers creating a feature branch, making changes, staging and committing those changes, pushing the branch to GitHub, creating a Pull Request, merging the changes into `main`, and cleaning up afterwards.

## Scenario

A new piece of documentation needs to be added to the repository.

Instead of making the change directly on `main`, the change will be developed on a separate feature branch and reviewed through a GitHub Pull Request.

## Workflow

The intended workflow is:

`main`

↓

`feature/git-workflow-notes`

↓

Make changes

↓

Stage changes

↓

Commit changes

↓

Push feature branch to GitHub

↓

Create Pull Request

↓

Merge into `main`

↓

Synchronise local `main`

↓

Delete the feature branch

## Commands Practised

### `git status`

`git status` checks the current state of the repository. It shows which files have been changed, which files are untracked, and which changes are staged and ready to commit.

### `git add`

`git add` adds changes to the staging area so they are ready to be included in the next commit.

Example:

```bash
git add Labs/01-feature-branch-pull-request.md
```

### `git commit`

`git commit` records the changes that have been added to the staging area.

Example:

```bash
git commit -m "Add feature branch pull request markdown explaining the lab"
```

### `git switch -c <branch-name>`

This creates a new branch and immediately switches to that branch.

Example:

```bash
git switch -c feature/git-workflow-notes
```

### `git log`

`git log` shows the commit history of the repository.

The `--oneline` option presents each commit on a single line, which makes the history easier to read and helps when troubleshooting and understanding what has happened in the repository.

```bash
git log --oneline
```

The `--decorate` option shows references such as branch names, `HEAD`, and remote branches alongside the commits. This makes it easier to visualise where the different branches are pointing.

```bash
git log --oneline --decorate
```

## What I Learned

One of the main lessons I learned from this lab is that I should avoid pushing changes directly to `main`.

A better workflow is to create a new feature branch and work from that branch. Once I have made and committed my changes, I can push the feature branch to GitHub.

On GitHub, I can create a Pull Request and review the changes before merging them into `main`. This gives me an opportunity to check for any errors before the changes become part of the main branch.

Once I am happy with the changes and the Pull Request has been merged, I can move back to `main` in my terminal:

```bash
git switch main
```

I can then pull down the changes that were merged on GitHub:

```bash
git pull origin main
```

This updates my local `main` branch so that it matches the changes that have been merged into `main` on GitHub.
