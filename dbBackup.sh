#!/bin/bash

#Welcome Message
echo "Welcomee to the MySQL DB BackUp Script v1.0"
sleep 1
echo "This script will back up MySQL DB of your choice"
sleep 1
echo "-------------Gathering Details-------------------"
sleep 2

#Gather BackUp Details
read -p "Enter the name of the MySQL DB that should be backed up: " dbBackup
sleep 1
read -p "Enter the absolute path where you'd like to save your backup file:  " absoPath
sleep 1
read -p "Enter the desired name of the backup file (without the extention): " backupFile
sleep 1

#Create the final backup location and file name
finalBackup="$absoPath/$backupFile-$(date +%Y-%m-%d_%H-%M-%S).sql"

#Prompt the user for the usernameand password to MySQL
read -p "Enter the username for MySQL: " usrName
sleep 1
read -s -p "Enter the password for MySQL: " psswd
sleep 1



#Commence DB BackUp
sudo mysqldump -u $usrName -p$psswd $dbBackup > $finalBackup

#Validation and Error Check
if [ $? = 0 ]; then
	echo "Backup was successful. Your backup file is located here: $finalBackup"
else
	echo  "An error occured during the backup. Try again."
fi


