#!/bin/bash
arquivo=$(echo $1|cut -d'.' -f1,2)

for senha in $(seq -w 0 9999)
do
 ccrypt -d $1 -K $senha
 if [ $? -eq 0 ]
 then
  echo 'Senha é: '$senha
  cp $arquivo $2
  ccrypt -q $arquivo -K $senha
  exit 0
 fi
done
exit 1
