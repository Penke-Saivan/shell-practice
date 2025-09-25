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
echo "Script name is $USER"
#PID
echo "Script name is $$"

# PID of the last command
sleep 30
 echo $!