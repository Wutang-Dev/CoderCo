# Bash Conditional Statements

## Overview

This exercise demonstrates how conditional statements control the execution of Bash scripts based on different conditions.

The script contains three examples: an age checker, a grade calculator and a scholarship eligibility checker.

## Concepts Practised

- Using `if`, `elif` and `else` statements.
- Comparing numeric values using `-gt` and `-ge`.
- Understanding conditional execution.
- Creating nested `if` statements.
- Using variables within conditional expressions.

## How the Script Works

### 1. Age Checker

The first example assigns an age to a variable and checks whether the person is an adult.

It uses `-ge` (greater than or equal to) to determine whether the age is at least 18.

### 2. Grade Calculator

The second example assigns a numerical grade and uses multiple `elif` statements to determine the corresponding letter grade.

The conditions are evaluated sequentially until a matching condition is found.

### 3. Scholarship Eligibility

The final example demonstrates nested conditional statements.

The script first checks whether the student is at least 18 years old.

If this condition is satisfied, a second `if` statement checks whether their grade is at least 90.

Both conditions must be satisfied for the student to qualify for the scholarship.

## Running the Script

Give the script executable permissions:

```bash
chmod +x if.sh
```

Execute the script:

```bash
./if.sh
```

### Expected Output

Using the original example values, with the corrected age comparison:

```text
You are an adult.
You got a B.
You are eligible for a scholarship.
```

## Key Takeaways

This exercise reinforced how Bash conditional statements allow scripts to make decisions.

It also demonstrated how nested conditions can evaluate multiple requirements and how comparison operators affect the results of conditional expressions.