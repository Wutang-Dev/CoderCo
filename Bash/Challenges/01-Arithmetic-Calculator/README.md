# Challenge 1: Basic Arithmetic Calculator

## Overview

This challenge involved developing a Bash script that accepts two numbers from the user and performs four basic arithmetic operations.

The exercise was completed as part of my CoderCo DevOps training to practise Bash scripting fundamentals.

## Challenge Requirements

- Prompt the user for two numbers.
- Perform addition, subtraction, multiplication and division.
- Display the results of each operation.
- Handle division by zero.

## My Implementation

I developed an interactive calculator using Bash variables, the `read` command, arithmetic expansion and conditional statements.

The script:

1. Prompts the user to enter two integers.
2. Validates that both inputs are integers.
3. Performs addition, subtraction and multiplication.
4. Checks whether the second number is zero.
5. Performs division if the second number is non-zero.

The calculator uses Bash integer arithmetic, meaning fractional division results are truncated.

## Concepts Practised

| Concept | Implementation |
|---|---|
| User input | `read -r` |
| Variables | `number1`, `number2` |
| Arithmetic expansion | `$(( ))` |
| Conditional statements | `if/else` |
| Integer comparison | `-ne` |
| Input validation | Regular expressions |
| Error handling | Division-by-zero check |

## Running the Script

Grant execution permissions:

```bash
chmod +x solution.sh
```

Execute the calculator:

```bash
./solution.sh
```

Enter two integers when prompted.

## Example Output

```text
Enter first number:
10
Enter second number:
5
The sum of 10 and 5 is: 15
The subtraction of 10 and 5 is: 5
The multiplication of 10 and 5 is: 50
The division of 10 by 5 is: 2
```

### Division-by-Zero Example

```text
Enter first number:
10
Enter second number:
0
The sum of 10 and 0 is: 10
The subtraction of 10 and 0 is: 10
The multiplication of 10 and 0 is: 0
Division by zero is not allowed.
```

## Key Takeaways

This challenge reinforced my understanding of Bash variables, user input and arithmetic expansion.

I also practised using conditional statements to handle invalid operations and explored how input validation can improve script reliability.

These concepts provide a foundation for developing more advanced Bash automation scripts.