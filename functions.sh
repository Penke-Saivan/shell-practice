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
echo "-------------------------INSTALL MYSQL ---------------------------"
dnf list installed mysql

if [ $? -ne 0]; then
    dnf install mysql -y
    VALIDATE $? "My SQL"
else 
    echo "mysql already exists... SKIPPING " 
fi
echo "-------------------------INSTALL NGINX ---------------------------"

dnf list installed nginx

if [ $? -ne 0]; then
    dnf install nginx -y
    VALIDATE $? "nginx"
else 
    echo "nginx already exists... SKIPPING " 
fi
echo "-------------------------INSTALL PYTHON ---------------------------"
dnf list installed python3

if [ $? -ne 0]; then
    dnf install python3 -y
    VALIDATE $? "python3"
else 
    echo "python3 already exists... SKIPPING " 
fi
