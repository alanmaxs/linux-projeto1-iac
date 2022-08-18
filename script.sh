#!/bin/bash

echo "Criando os Diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criandos os Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os Usuarios"

useradd carlos -c "Carlos Antonio" -m -s /bin/bash -p $(openssl passwd "senha123") -G GRP_ADM
useradd maria -c "Maria da Silva" -m -s /bin/bash -p $(openssl passwd "senha123") -G GRP_ADM
useradd joao -c "João Antonio" -m -s /bin/bash -p $(openssl passwd "senha123") -G GRP_ADM

useradd debora -c "Débora Cristina" -m -s /bin/bash -p $(openssl passwd "senha123") -G GRP_VEN
useradd sebastiana -c "Sebastiana de Souza" -m -s /bin/bash -p $(openssl passwd "senha123") -G GRP_VEN
useradd roberto -c "Roberto Claudio" -m -s /bin/bash -p $(openssl passwd "senha123") -G GRP_VEN

useradd josefina -c "Josefina da Conceição" -m -s /bin/bash -p $(openssl passwd "senha123") -G GRP_SEC
useradd amanda -c "Amanda Cristina" -m -s /bin/bash -p $(openssl passwd "senha123") -G GRP_SEC
useradd rogerio -c "Rogerio Gonçalves" -m -s /bin/bash -p $(openssl passwd "senha123") -G GRP_SEC

echo "Dando permissões dos diretorios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado"
