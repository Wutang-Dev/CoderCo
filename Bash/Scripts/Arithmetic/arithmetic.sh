#!/bin/bash

num1=5
num2=10

result=$((num1 + num2))

echo "The sum of $num1 and $num2 is: $result"

# Area of a Rectangle 

length="$1"
width="$2"

area=$((length * width))
perimeter=$((2 * (length + width)))

echo "The length of the rectangle is $length , the width of the rectangle is $width and  the area of the rectacle is $area and the perimeter is $perimeter"
