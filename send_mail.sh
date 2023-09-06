#!/bin/bash

mailSubject="Subject: msmtp test"
mailBody="Test message"

host="smtp.yandex.ru"
port="587"
mailFrom="<yandex_email>"
user="<yandex_email>"
password="<password>"
mailTo="<destination_email>"

echo -e "$mailSubject\n\n$mailBody" | \
    msmtp --debug \
          --auth="plain" \
          --tls="on" --tls-starttls="on" --tls-certcheck="off" \
          --host=$host --port=$port --user=$user --passwordeval="echo $password" \
          --from=$mailFrom $mailTo
