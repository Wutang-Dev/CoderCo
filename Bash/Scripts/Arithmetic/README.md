# Bash Arithmetic and Positional Parameters

## Overview

This exercise demonstrates arithmetic operations and positional parameters in Bash.

The script performs a basic addition calculation before accepting two command-line arguments to calculate the area and perimeter of a rectangle.

## Concepts Practised

- Declaring and assigning numeric variables.
- Performing arithmetic using `$(( ))`.
- Accessing positional parameters using `$1` and `$2`.
- Using command-line arguments to make scripts dynamic.
- Displaying calculated results using `echo`.

## How the Script Works

The script performs two operations.

**1. Addition**

Two variables are assigned the values 5 and 10. Bash arithmetic expansion calculates their sum.

**2. Rectangle calculations**

The script accepts two command-line arguments representing the rectangle's length and width.

It calculates the area by multiplying the length and width, and the perimeter by adding the dimensions and multiplying the result by two.

## Running the Script

Grant execution permissions:

```bash
chmod +x arithmetic.sh
```

Execute the script with two arguments:

```bash
./arithmetic.sh 10 5
```

Expected output:

```text
The sum of 5 and 10 is: 15
Length: 10
Width: 5
Area: 50
Perimeter: 30
```

## Key Takeaways

This exercise reinforced Bash arithmetic expansion and introduced positional parameters.

Using command-line arguments makes scripts reusable because values can be supplied during execution rather than being hardcoded into the script.