#!/bin/bash

# This script demonstrates the use of a while loop in bash.
# while condition
# do
#     #code to be executed
# done

#example of a while loop
count=1
while [ $count -le 5 ]
do
    echo "Count is: $count"
    ((count++))
done

#example of a while loop using an array
fruits=("apple" "banana" "cherry")
index=0
while [ $index -lt ${#fruits[@]} ]
do
    echo "Fruit is: ${fruits[$index]}"
    ((index++))
done