#!/bin/bash

# Prompt the user for input
read -p "Enter a number: " user_input

# Check if the input is a positive integer
if [[ "$user_input" =~ ^[1-9][0-9]*$ ]]; then
    # Check if the number is even or odd
    if ((user_input % 2 == 0)); then
        echo "The entered number is even."
    else
        echo "The entered number is odd."
    fi
else
    echo "Invalid input. Please enter a positive integer."
fi

