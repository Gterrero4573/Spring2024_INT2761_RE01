#!/bin/bash

#Prompt the user to enter first and last name
#First name
read -p "Enter first name: " firstName
sleep 1 
#Last name
read -p "Enter last name: " lastName
sleep 1
#Student ID
read -p "Enter Student ID: " studentID

#Generate Results that use basic logic

if [ studentID=1234 ]
then
        echo "Welcome $firstName $lastName to your virtual machine!"
else
	echo "Error, invalid StudentID: [$studentID]. Please try again"
fi
sleep 1
