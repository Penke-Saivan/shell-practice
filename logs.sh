#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shellscript-logs"
FILE_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE="$LOGS_FOLDER/$FILE_NAME.log"
mkdir -p $LOGS_FOLDER
if [ $USERID -ne 0 ]; then
    echo -e "Please use $G super user privilege $N" | tee -a $LOG_FILE
    exit 1
else 
    echo -e "Already had $R Super User$N Privilege" | tee -a $LOG_FILE
fi

VALIDATE(){

    if [ $1 -ne 0 ]; then
        echo -e "ERROR:: Installing $2 is $R failure.... $N " | tee -a $LOG_FILE
        exit 1
    else
        echo -e "Installing $2 is $G SUCCESS............$N" | tee -a $LOG_FILE
    fi        
}
echo -e "---------------------$Y----INSTALL MYSQL -------------------------$N--" | tee -a $LOG_FILE
dnf list installed mysql &>> $LOG_FILE

if [ $? -ne 0 ]; then
    dnf install mysql -y &>> $LOG_FILE
    VALIDATE $? "My SQL"
else 
    echo -e "mysql already exists... $Y SKIPPING...................$N "  | tee -a $LOG_FILE
fi
echo -e "------------------------- $Y  INSTALL NGINX ------------------$N---------" | tee -a $LOG_FILE

dnf list installed nginx &>> $LOG_FILE

if [ $? -ne 0 ]; then
    dnf install nginx -y &>> $LOG_FILE
    VALIDATE $? "nginx"
else 
    echo -e "nginx already exists... $Y SKIPPING...................$N "  | tee -a $LOG_FILE
fi
echo -e "-------------------$Y-----INSTALL PYTHON -------------------------$N--" | tee -a $LOG_FILE
dnf list installed python3 &>> $LOG_FILE

if [ $? -ne 0 ]; then
    dnf install python3 -y &>> $LOG_FILE
    VALIDATE $? "python3"
else 
    echo -e "python3 already exists... $Y SKIPPING...................$N " | tee -a $LOG_FILE
fi
