SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE=$PWD/$SCRIPT_NAME.log
echo $PWD
dnf install mysql -y &>>$LOG_FILE

if [ $? -ne 0 ]; then
    echo "ERROR:: Installing MySQL is failure"
    exit 1
else
    echo "Installing MySQL is SUCCESS"
fi