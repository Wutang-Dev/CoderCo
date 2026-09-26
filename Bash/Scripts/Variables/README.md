# Bash Variables and Arrays

## Overview

This exercise demonstrates how to declare, assign and access variables in Bash.

It also introduces indexed arrays and demonstrates how variables can be combined to generate terminal output.

## Concepts Demonstrated

- Declaring and assigning Bash variables.
- Storing strings and numeric values.
- Creating and accessing indexed arrays.
- Using `echo` to display variable values.
- Combining variables to produce output.
- Understanding variable expansion.

## Script Explanation

The script declares four variables:

- `greeting`: Stores a greeting message.
- `count`: Stores the number 42.
- `fruits`: An indexed array containing fruit names.
- `name`: Stores a name used in the greeting.

The script then uses `echo` to display the values.

During review, I also explored how Bash arrays work and how individual elements differ from displaying the entire array.

## Running the Script

Grant execution permissions:

```bash
chmod +x var.sh
```

Execute:

```bash
./var.sh
```

## Key Takeaways

This exercise reinforced how Bash variables store and retrieve values.

I also explored the importance of correct array syntax and quoting variables to preserve their values during expansion.