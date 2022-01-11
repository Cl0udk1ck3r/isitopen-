#! /bin/bash

echo "What program do you seek?"
#Prompt for user input
read programname

#Stores the variable to check for emptiness
answer="$(ps -e | grep $programname | grep -v "isitopen")"

if [[ -n $answer ]]
then
	echo "It's open. "
else
	echo "Nope. "
	exit
fi

echo "Do you want me to fix that for you?"
#Prompt for binary input
read answer

if [[ $answer == yes ]]
then
	sudo pkill -f $programname
	echo "It is done."
else
	echo "Understood. My blade is ready."
fi
