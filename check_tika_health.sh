#!/bin/bash

TIKA_URL="http://127.0.0.1:9998/tika"

sleep 5

RESPONSE=$(curl -m 5 --write-out "%{http_code}\n" --silent --output /dev/null -T test.pdf ${TIKA_URL})

if [ $RESPONSE != '200' ]
then
    echo Restarting tika
    pm2 delete tika_server
    pm2 delete tika_server_check_health
    pm2 reload pm2.yml
else
    echo tika_server is running normally
fi
