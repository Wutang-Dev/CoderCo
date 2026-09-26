# Bash While Loops

## Overview

This exercise demonstrates how to use `while` loops in Bash to repeatedly execute commands while a specified condition remains true.

The script includes two examples: a counter-based loop and a loop that iterates through an array.

## Concepts Practised

- Creating `while` loops.
- Using conditional expressions.
- Comparing numerical values using `-le` and `-lt`.
- Incrementing variables using `((variable++))`.
- Creating and accessing Bash arrays.
- Determining array length using `${#array[@]}`.
- Using array indexes to access individual elements.

## How the Script Works

### 1. Counter-Based While Loop

The first example initialises a variable named `count` with the value 1.

The `while` loop continues executing while the counter is less than or equal to 5.

During each iteration, the script displays the current value and increments the counter.

### 2. While Loop Using an Array

The second example creates an array containing three fruits.

An index variable starts at 0, representing the first element in the array.

The loop continues while the index is less than the total number of array elements.

During each iteration, the script displays the current fruit and increments the index.

Using the array's length makes the loop adaptable when additional elements are introduced.

## Running the Script

Grant execution permissions:

```bash
chmod +x while.sh
```

Execute the script:

```bash
./while.sh
```

## Expected Output

```text
Count is: 1
Count is: 2
Count is: 3
Count is: 4
Count is: 5
Fruit is: apple
Fruit is: banana
Fruit is: cherry
```

## Key Takeaways

This exercise reinforced how `while` loops repeatedly execute commands while a condition remains true.

It also demonstrated how counters, array indexes and array lengths can be combined to process multiple elements dynamically.