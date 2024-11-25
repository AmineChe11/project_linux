#!/bin/bash


guessing_game() {
    local correct_number=$(ls -1 | wc -l) 
    local guess=-1

    echo "Welcome to the Guessing Game!"
    echo "How many files are in the current directory?"

    while [[ $guess -ne $correct_number ]]
    do
        read -p "Enter your guess: " guess

        if [[ $guess -lt $correct_number ]]
        then
            echo "Your guess is too low. Try again."
        elif [[ $guess -gt $correct_number ]]
        then
            echo "Your guess is too high. Try again."
        else
            echo "Congratulations! You guessed correctly."
        fi
    done
}


guessing_game
