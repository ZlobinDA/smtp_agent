#!/bin/bash

mailSubject="Subject: msmtp test"
mailBody="Test message"

host="smtp.yandex.ru"
port="587"
mailFrom="<username>"
user="<username>"
password="<password>"
mailTo="<destination_email>"

echo -e "$mailSubject\n\n$mailBody" | \
    msmtp --debug --auth="on" --tls="on" --tls-starttls="on" --tls-certcheck="off" --host=$host --port=$port --user=$user --passwordeval="echo $password" --from=$mailFrom $mailTo
