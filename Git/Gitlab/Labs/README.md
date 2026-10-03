# Git & GitHub Practice Labs

This directory contains my hands-on Git and GitHub labs completed alongside the Git module of the CoderCo DevOps bootcamp.

The purpose of these labs is to move beyond memorising individual Git commands and practise using Git as part of a realistic development workflow.

Each lab introduces a new Git concept while continuing to reinforce the feature branch and Pull Request workflow established in Lab 01.

---

## Lab Workflow

Unless the exercise specifically requires something different, each lab follows this workflow:

1. Start from `main`
2. Check the repository status
3. Pull the latest changes from GitHub
4. Create a feature branch for the lab
5. Complete the exercise on the feature branch
6. Inspect the changes
7. Stage the required files
8. Commit the changes
9. Push the feature branch to GitHub
10. Open a Pull Request
11. Review the changes before merging
12. Merge the Pull Request into `main`
13. Switch back to `main` locally
14. Pull the updated `main`
15. Delete the completed feature branch

This workflow will be repeated throughout the labs so that working with branches and Pull Requests becomes part of my normal Git workflow.

---

## Labs

### Lab 01 - Feature Branch and Pull Request

[01-feature-branch-pull-request.md](01-feature-branch-pull-request.md)

Introduces the feature branch workflow and covers:

- Creating and switching branches
- Checking repository status
- Staging changes
- Creating commits
- Pushing a feature branch to GitHub
- Creating and reviewing a Pull Request
- Merging changes into `main`
- Synchronising local `main` with GitHub
- Cleaning up completed branches
- Inspecting Git history

---

## Approach

These labs are intentionally hands-on.

Rather than only documenting commands, I will create changes, make mistakes, troubleshoot problems and document what I learned from each exercise.

As new Git concepts are introduced, the workflow from Lab 01 will continue to be used so that previous skills are repeatedly practised.

---

## Repository Structure

```text
Gitlab/
├── Labs/
│   ├── README.md
│   ├── 01-feature-branch-pull-request.md
│   └── ...
├── README.md
└── notes.md
```

More labs will be added as I progress through Git and GitHub.