# Incident 02: Git Pre-Commit YAML Configuration Error

**Environment:** Ubuntu Server, Git and GitHub  
**Technology:** Git, YAML, ShellCheck, Pre-commit  
**Status:** Resolved

## 1. Problem

While updating my CoderCo Linux README, I introduced a pre-commit hook using ShellCheck.

However, attempting to commit my changes resulted in an error:

```
InvalidConfigError:
mapping values are not allowed in this context
```

The error referenced line 4 of my `.pre-commit-config.yaml` file.

## 2. Investigation

I examined the configuration file to identify the formatting problem.

```
cat -n .pre-commit-config.yaml
```

I discovered YAML formatting issues, including incorrect spacing and indentation.

## 3. Root cause

The pre-commit configuration contained invalid YAML syntax.

YAML relies on correct indentation and spacing to represent configuration structures.

Consequently, pre-commit could not parse the configuration and prevented Git from completing the commit.

## 4. Resolution

I corrected the configuration file:

```
repos:
  - repo: https://github.com/koalaman/shellcheck-precommit
    rev: v0.9.0
    hooks:
      - id: shellcheck
```

I validated the corrected configuration:

```
pre-commit validate-config
```

The configuration passed validation.

However, my next commit attempt revealed that the modified configuration file needed to be staged.

I resolved this using:

```
git add .pre-commit-config.yaml
```

I then committed the changes and pushed them to GitHub.

## 5. Verification

The commit completed successfully.

ShellCheck initialised correctly but skipped execution because there were no applicable shell scripts in the commit.

Git successfully pushed the changes to the remote repository.

## 6. Lessons learned

- YAML requires correct indentation and spacing.
- Pre-commit hooks can prevent commits when configuration errors exist.
- Changes must be staged before Git includes them in a commit.
- Configuration validation and hook execution are separate processes.
- Troubleshooting error messages systematically helps identify problems.

**Outcome:** Successfully configured pre-commit and pushed the updated repository to GitHub.