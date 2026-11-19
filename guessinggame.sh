#!/usr/bin/env bash

# Count regular files in the current directory
count_files() {
    find . -maxdepth 1 -type f | wc -l
}

# Store the correct answer
total=$(count_files)

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# Repeat until the user guesses correctly
while true
do
    read -p "Enter your guess: " guess

    # Make sure the guess contains only digits
    if ! [[ "$guess" =~ ^[0-9]+$ ]]
    then
        echo "Please enter a valid number."
    elif [[ $guess -lt $total ]]
    then
        echo "Too low! Try again."
    elif [[ $guess -gt $total ]]
    then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed correctly!"
        break
    fi
done
