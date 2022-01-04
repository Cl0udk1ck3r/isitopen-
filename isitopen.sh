#! /bin/bash

echo "What program do you seek?"
#Prompt for user input
read programname

#Stores the variable to check for emptiness
answer="$(ps -e | grep $programname | grep -v isdiscordopen)"

if [[ -n $answer ]]
then
	printf "It's open. "
else
	printf "Nope. "
fi
