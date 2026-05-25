#!/bin/bash/

USERID=$(id -u)
LOGS_DIR=/var/log/shell-script
LOGS_FILE="$LOGS_DIR/$0.log"

#check root access or not
if [ $USERID -ne 0 ]; then
     echo "Please run this script with root access"
     exit 1
     
fi

# first arg  -> what are you trying to install
# second arg  -> exit code
VALIDATE(){
      if [ $2 -ne 0]; then
      echo "Installing $1 is ... Failed"
      exit 1
    else
      echo "Installing $1 is ... SUCCESS"
    fi   
}

for package in $@
do
    echo "Installing $package"
done


