#!/bin/bash

rm $2

while read pass
do
  code=$(echo $pass | sha512sum)
  echo $code' '$pass >> $2
done < $1
