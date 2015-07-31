#!/bin/bash

cp $1 tmp.txt

for i in `grep  "ari:includeFile=.*"  $1 | sed 's/ari:includeFile=//'`
do
  sed -e "/ari:includeFile=$i/r resources\/$i" -e "/ari:includeFile=$i/d" tmp.txt > tmp_2.txt
  mv tmp_2.txt tmp.txt
done 

mv tmp.txt $2

