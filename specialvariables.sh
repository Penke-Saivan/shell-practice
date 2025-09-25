#!/bin/bash

#All ARGS
echo "All variables a pssed as ARGS- $@"
echo "All variables a pssed as ARGS- $*"
echo $1
echo $2
echo $3
echo $4
echo $5

# output
# All variables a pssed as ARGS- aws was saw testing abcd fjdf
# All variables a pssed as ARGS- aws was saw testing abcd fjdf
# aws
# was
# saw
# testing abcd
# fjdf

# Script name

echo "Script name is $0"

# Current Directory
echo "Script name is $PWD"

# Current user
echo "Script name is $USER"

#Home directory of user
echo "Script name is $HOME"

#PID
echo "Script PID is $$"

# PID of the last command
sleep 10 &
 echo "PID of last command $!"

 # Output
#  All variables a pssed as ARGS-
# All variables a pssed as ARGS-
# Script name is specialvariables.sh
# Script name is /home/ec2-user/shell-practice
# Script name is ec2-user
# Script name is /home/ec2-user
# Script PID is 2484
# PID of last command 2485
#ec2-user    2485       1  0 11:54 pts/0    00:00:00 sleep 10
