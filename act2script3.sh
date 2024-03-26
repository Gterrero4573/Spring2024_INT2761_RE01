#!/bin/bash

#Time variable

current_time=$(date +"%H")

#Prompt user to enter name

read -p "Enter name: " userName

#Greet user based on time

if [ $current_time -lt 12 ];
then
	echo "Good morning, $userName!"
elif [ $current_time -ge 12 ] && [ $current_time -lt 17 ];
then
	echo "Good afternoon, $userName!"
else
	echo "Good evening, $userName!"
fi

