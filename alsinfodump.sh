#!/bin/bash


name=$(whoami)
myip=$(ip route get 8.8.8.8 2>/dev/null | awk '{print $7}')
date=$(date "+%A %b %d %Y")
thetime=$(date +"%H:%M:%S")
whereami=$(pwd)


echo "Hello there $name, hope everything is good"
echo "The time is $thetime, the date is $date"
sleep 2
echo "your currently located in $whereami,"
echo "Current IP: ${myip:-Not connected}"
