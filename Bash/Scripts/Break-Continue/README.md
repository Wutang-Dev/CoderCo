# Bash Break and Continue

## Overview

This exercise demonstrates how the `continue` statement controls the execution of Bash loops.

The script uses both `for` and `while` loops to skip a specific iteration without terminating the entire loop.

It also introduces the difference between `break` and `continue`.

## Concepts Practised

- Using `for` loops.
- Using `while` loops.
- Applying conditional statements within loops.
- Skipping iterations using `continue`.
- Understanding the difference between `break` and `continue`.
- Incrementing counters within loops.

## How the Script Works

### 1. For Loop

The first loop iterates through numbers 1 to 10.

When the counter reaches 5, the `continue` statement skips the remaining commands in that iteration.

The loop then continues with the next number.

### 2. While Loop

The second loop iterates through numbers 1 to 7.

When the counter reaches 5, the script increments the counter before executing `continue`.

This prevents the loop from repeatedly processing the same value.

### Break vs Continue

- `continue` skips the remaining commands in the current iteration.
- `break` terminates the loop immediately.

The original script demonstrates `continue`. A separate practice exercise can be used to explore `break`.

## Running the Script

Grant execution permissions:

```bash
chmod +x break-continue.sh
```

Execute:

```bash
./break-continue.sh
```

## Expected Output

The for loop produces:

```text
Number: 1
Number: 2
Number: 3
Number: 4
Number: 6
Number: 7
Number: 8
Number: 9
Number: 10
```

The while loop produces:

```text
Count: 1
Count: 2
Count: 3
Count: 4
Count: 6
Count: 7
```

## Key Takeaways

This exercise demonstrated how conditional statements and `continue` can control loop execution.

It also reinforced the difference between automatically incremented `for` loops and manually incremented `while` loops.

Understanding loop control is useful when processing files, automating repetitive tasks and handling conditions within Bash scripts.