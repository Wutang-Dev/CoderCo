#!/bin/bash
# ask for number1
echo "Enter first number:"
read number1    
# ask for number2
echo "Enter second number:"
read number2

# add -arrithmetic expansion of the two numbers
sum=$((number1 + number2))
echo "The sum of $number1 and $number2 is: $sum"

# subtract -arithmetic expansion of the two numbers
minus=$((number1 - number2))
echo "The subtraction of $number1 and $number2 is: $minus"

# multiply -arithmetic expansion of the two numbers
multiply=$((number1 * number2))
echo "The multiplication of $number1 and $number2 is: $multiply"   

# divide -arithmetic expansion of the two numbers
if [ $number2 -ne 0 ]; then
    divide=$((number1 / number2))
    echo "The division of $number1 by $number2 is: $divide"
else
    echo "Division by zero is not allowed."
fi
