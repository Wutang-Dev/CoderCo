#!/bin/nash

age=30

if [ $age -gt 18 ]
then
    echo "You are an adult."
else
    echo "You are a minor."
fi

# grade calculator

grade=85
if [ $grade -ge 90 ]
then
    echo "You got an A."
elif [ $grade -ge 80 ]
then
    echo "You got a B."
elif [ $grade -ge 70 ]
then
    echo "You got a C."
elif [ $grade -ge 60 ]
then
    echo "You got a D."
else
    echo "You got an F."
fi

# nested if statements
# see if the student is eligible for a scholarship based on their age and grade

age=18
grade=90

if [ $age -ge 18 ]
then
    if [ $grade -ge 90 ]
    then
        echo "You are eligible for a scholarship."
    else
        echo "You are not eligible for a scholarship."
    fi
else
    echo "You are not eligible for a scholarship."
fi
