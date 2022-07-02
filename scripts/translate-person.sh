#!/bin/bash

echo "id,first_name,last_name" > grafos/PERSON.csv

cat relacional/DML-PERSON.sql | \
sed -e "s/insert into PERSON (id, first_name, last_name) values (//g;s/\'//g;s/ //g;s/);//g" >> \
grafos/PERSON.csv
