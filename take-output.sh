#!/bin/bash
Date=$(date)
echo $Date
Start=$(date +%s)
echo $StartTime
sleep 1

End= $(date +%s)

Total= $(($End-$Start))

echo "Time elapsed is $Total"