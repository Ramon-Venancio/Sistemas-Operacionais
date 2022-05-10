#!/bin/bash

final=$((10**$1-1))
for numero in $(seq -w 0 $final | sort -R)
do
 echo 'Sua senha criada é: '$numero
 exit 0
done
