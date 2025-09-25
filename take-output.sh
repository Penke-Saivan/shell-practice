#!/bin/bash
Date=$(date)
echo "$Date"
StartTime=$(date +%s)

sleep 2

EndTime= $(date +%s)

TotalTime= $(( $EndTime - $StartTime ))

echo "Time elapsed is $TotalTime"