#!/bin/bash

touch tmp;
python dml-generator.py > DML-PERSONFRIEND.sql;
sort -u DML-PERSONFRIEND.sql > tmp;
shuf tmp > DML-PERSONFRIEND.sql;
