#!/bin/bash

echo "person_id,friend_id" > grafos/PERSONFRIEND.csv

cat relacional/DML-PERSONFRIEND.sql | \
sed -e "s/INSERT INTO PERSONFRIEND VALUES (//g;s/ //g;s/);//g" >> \
grafos/PERSONFRIEND.csv
