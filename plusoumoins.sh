#!/usr/bin/bash

echo "Plus ou moins - Devine un nombre et tu gagnes rien t'as capté"

### Generate random number
(( answer = RANDOM % 100 + 1 ))

### Play game
while (( guess != answer )); do
	echo "eNTRE U NNOMBRE"
read  guess
	if (( guess < answer )); then
		echo "Higher..."
	elif (( guess > answer )); then
		echo "Lower..."
	fi
done
echo "Correct!\n"
