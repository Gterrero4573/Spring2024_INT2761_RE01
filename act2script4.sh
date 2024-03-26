#!/bin/bash

generate_report () {

	#Report Header
	echo "Report generated on: $(date)"
	sleep 1
	echo "-----------------------------"
	sleep 2

	#CPU Usage
	echo "CPU Usage: "
	top -bn 1 | grep -i "cpu"

	#Memory Usage
	echo "-----------------------------"
	sleep 2
	echo "Memory Usage: "
	free -h

	#Disk Usage
	echo "-----------------------------"
	sleep 2
	echo "Disk Usage: "
	df -h

	#Print report footer
	echo "-----------------------------"
	sleep 2
	echo "Report End"
}

#Call function
generate_report






