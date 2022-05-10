#! /bin/bash
echo "Vou buscar os dados do sistema. Posso continuar [s/n]"
read RESPOSTA
test "$RESPOSTA" = "n" && exit
echo "Data e Horario:"
date
echo
echo "Uso do disco:"
df
echo
echo "Usuário conectados:"
w
