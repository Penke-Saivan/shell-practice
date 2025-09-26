for i in {1..5}

do 

    echo $i

done

#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shellscript-logs"
FILE_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE="$LOGS_FOLDER/$FILE_NAME.log"
mkdir -p  $LOGS_FOLDER
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
        echo -e "Installing $2 is $G SUCCESS......$N" | tee -a $LOG_FILE
    fi        
}


#for loop
for package in $*

do
    echo -e "---------------------$Y----INSTALL $package ------$N--" | tee -a $LOG_FILE

    dnf list installed $package &>> $LOG_FILE

    if [ $? -ne 0 ]; then
        dnf install $package -y &>> $LOG_FILE
        VALIDATE $? "My $package"
    else 
        echo -e "$package already exists... $Y SKIPPING.....$N "  | tee -a $LOG_FILE
    fi
done
