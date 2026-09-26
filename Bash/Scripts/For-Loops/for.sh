#!/bin/bash

#This is simple script to demenstrate the use of for loop in bash scripting

for ((i=1; i<=10; i++))
do
  echo "Number $i"
done

#Example of a for loop with a array
footbalers=("Messi" "Ronaldo" "Neymar" "Mbappe")
for player in "${footbalers[@]}"
do
  echo "Footballer: $player"
done    

#Example of a for loop using a sequence command
for numbers in $(seq 1 10)
do
  echo "Number: $numbers"
done    