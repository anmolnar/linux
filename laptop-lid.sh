#!/bin/bash

LOG_FILE='/var/log/laptop-lid.log'
touch $LOG_FILE && chmod 0666 $LOG_FILE

grep -q closed /proc/acpi/button/lid/LID0/state
if [ $? = 0 ]
then
    # close action
    echo "$(date '+%Y.%m.%d %H:%M:%S.%3N'): closed" >> $LOG_FILE
    pam-auth-update --remove fprintd
else
    # open action
    echo "$(date '+%Y.%m.%d %H:%M:%S.%3N'): opened" >> $LOG_FILE
    pam-auth-update --enable fprintd
fi

