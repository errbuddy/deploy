#!/bin/bash

TARGET=/opt/errbuddy.war
ARTIFACT_URL="https://s3.eu-central-1.amazonaws.com/errbuddy-devel/errbuddy.war"

rm -f $TARGET
wget -O $TARGET $ARTIFACT_URL
java -Dgrails.env=prod -Derrbuddy.mysql.password=$MYSQL_PASSWORD -Derrbuddy.serverUrl=$SERVER_URL -jar $TARGET
