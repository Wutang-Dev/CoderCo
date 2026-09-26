#! /bin/bash
#for loop with break and continue statements
for (( i=1; i<=10; i++ ))
do
  if [ $i -eq 5 ]
  then
    continue
  fi
  echo "Number: $i"
  done

  #while loop with break and continue statements
  count=1
  while [ $count -le 7 ]
  do

    if [ $count -eq 5 ]
    then
      ((count++))
      continue
    fi
    echo "Count: $count"
    ((count++))
  done