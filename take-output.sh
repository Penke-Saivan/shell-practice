#!/bin/bash
Date=$date
echo $Date
StartTime=$(date +%s)

sleep 10

EndTime= $(date +%s)

TotalTime= $(($StartTime-$EndTime))

echo "Time elapsed is $TotalTime"