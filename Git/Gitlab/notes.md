# Git Session Notes

## Feature Branch Workflow

Today I practised working with feature branches in Git.

The goal of this exercise is to practise creating a feature branch, making changes, committing those changes, pushing the branch to GitHub, opening a Pull Request, merging the changes into `main`, and cleaning up afterwards.

---

## Practice Task

### 1. Create a New Feature Branch

```bash
git checkout -b feature/add-notes
```

This creates a new branch called `feature/add-notes` and switches to it.

---

### 2. Create a Notes File

```bash
nano notes.md
```

Add some notes to the file, then save and exit.

---

### 3. Check the Repository Status

```bash
git status
```

This shows the new `notes.md` file as an untracked file.

---

### 4. Stage the File

```bash
git add notes.md
```

Check the staging area:

```bash
git status
```

The file should now appear under **Changes to be committed**.

---

### 5. Commit the Changes

```bash
git commit -m "Add session notes"
```

This creates a commit containing the new notes file.

---

### 6. Push the Feature Branch

```bash
git push -u origin feature/add-notes
```

The `-u` option sets `origin/feature/add-notes` as the upstream branch.

Future pushes from this branch can then simply use:

```bash
git push
```

---

### 7. Open a Pull Request

Open GitHub and create a Pull Request from:

```text
feature/add-notes → main
```

Review the changes before merging the Pull Request.

---

### 8. Merge the Pull Request

Merge the feature branch into `main` through GitHub.

The changes from `feature/add-notes` are now part of the main branch.

---

### 9. Switch Back to Main

```bash
git switch main
```

---

### 10. Update Local Main

Pull the merged changes from GitHub:

```bash
git pull origin main
```

This ensures the local `main` branch contains the changes that were merged through the Pull Request.

---

### 11. Delete the Local Feature Branch

```bash
git branch -d feature/add-notes
```

The feature branch is no longer required after it has been successfully merged.

---

### 12. Check Remaining Branches

```bash
git branch
```

The expected result should be:

```text
* main
```

---

## Workflow

```text
Create Feature Branch
        ↓
Make Changes
        ↓
Stage Changes
        ↓
Commit Changes
        ↓
Push Feature Branch
        ↓
Open Pull Request
        ↓
Review Changes
        ↓
Merge into Main
        ↓
Pull Updated Main
        ↓
Delete Feature Branch
```

---

## What I Learned

- Feature branches keep development work separate from `main`.
- `git add` moves changes into the staging area.
- `git commit` records staged changes in Git history.
- `git push` sends local commits to the remote repository.
- `git push -u` sets an upstream branch.
- Pull Requests allow changes to be reviewed before merging.
- `git pull` updates the local repository with remote changes.
- Feature branches can be safely deleted after they have been merged.
- Local and remote branches are separate and have their own lifecycle.

---

## Key Commands

```bash
git checkout -b feature/add-notes
git status
git add notes.md
git commit -m "Add session notes"
git push -u origin feature/add-notes
git switch main
git pull origin main
git branch -d feature/add-notes
git branch
```
