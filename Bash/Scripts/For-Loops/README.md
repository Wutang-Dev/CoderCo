# Bash For Loops

## Overview

This exercise demonstrates three different approaches to using `for` loops in Bash.

Loops allow scripts to execute commands repeatedly, making them useful for automation and processing multiple items.

## Concepts Practised

- Writing C-style `for` loops.
- Using counters and increment operators.
- Creating and iterating through Bash arrays.
- Using command substitution with `$()`.
- Generating numerical sequences using `seq`.
- Displaying output during each loop iteration.

## How the Script Works

### 1. C-Style For Loop

The first example uses a counter that starts at 1 and increments until it reaches 10.

```bash
for ((i=1; i<=10; i++))
```

The loop executes once for each value, displaying the current number.

### 2. Iterating Through an Array

The second example creates an array containing four footballers.

```bash
footballers=("Messi" "Ronaldo" "Neymar" "Mbappe")
```

A `for` loop iterates through the array, displaying each footballer's name.

Using `"${footballers[@]}"` ensures that each array element is processed individually.

### 3. Using the seq Command

The final example uses `seq` to generate numbers from 1 to 10.

```bash
for number in $(seq 1 10)
```

Command substitution passes the generated numbers to the loop, which displays each value.

## Running the Script

Grant execution permissions:

```bash
chmod +x for.sh
```

Execute the script:

```bash
./for.sh
```

## Expected Output

The script displays numbers from 1 to 10 using the C-style loop, prints the four footballers' names and then displays numbers from 1 to 10 using `seq`.

## Key Takeaways

This exercise reinforced how `for` loops can automate repetitive tasks.

It also demonstrated how Bash arrays and command substitution can be combined with loops to process multiple values.