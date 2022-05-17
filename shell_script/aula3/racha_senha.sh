#!/bin/bash

arquivo=$(cat $2 | cut -d' ' -f1)

while read senha 
do
  codigo=$(echo $senha | sha512sum | cut -d' ' -f1)
 if [ $arquivo = $codigo ]
 then
  echo 'A senha é: ' $senha
  exit 0
 fi
 echo 'Procurando senha...'
done < $1

echo 'Não achou a senha.'
exit 1
