#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please use super user privilege"
    exit 1
else 
    echo "Already had Super User Privilege"
fi

VALIDATE(){

    if [ $1 -ne 0 ]; then
        echo "ERROR:: Installing $2 is failure"
        exit 1
    else
        echo "Installing $2 is SUCCESS"
    fi        
}

dnf install mysql -y
VALIDATE $? "My SQL"

dnf install nginx  -y
VALIDATE $? "Nginx"

dnf install python3   -y
VALIDATE $? "Python3"