#!/usr/bin/env bash
# File: guessinggame.sh

#This program will continuously ask the user to guess the number of files in the current directory, until they guess the correct number. 
#The user will be informed if their guess is too high or too low.
#Once the user guesses the correct number of files in the current directory they should be congratulated.

echo "Guess how many files are in the current directory?"
read response

game='on'

function how_many_files_in_here {
	ls -l | grep -v ^d | wc -l
}

while [[ $game = 'on' ]]
do
	if [[ $response =~ ^[0-9]+$ ]]
	then
		if [[ $response -eq $(how_many_files_in_here)  ]]
		then
			echo "Hoooray - You Guessed!"
			let game='off'

		elif [[ $response -gt $(how_many_files_in_here) ]]
		then
			echo "Try again - the number you provided is too high"
			read response
		elif [[ $response -lt $(how_many_files_in_here) ]]
		then
			echo "Try again - the number you provided is too low"
			read response
		fi
	else
		echo "Please give integer number"
		read response
	fi
done
