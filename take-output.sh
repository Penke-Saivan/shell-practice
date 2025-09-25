#!/bin/bash
Date=$(date)
echo $Date
StartTime=$(date +%s)
echo $StartTime
sleep 1

EndTime=$(date +%s)

Total=$(($EndTime-$StartTime))

echo "Time elapsed is $Total"