#!/bin/bash

echo "criando usuarios no sistema"

useradd guest10 -c "usuario convidado" -s /bin/bash -m -p $(openssl passwd "senha123")
passwd guest10 -e

useradd guest11 -c "usuario convidado" -s /bin/bash -m -p $(openssl passwd "senha123")
passwd guest11 -e

useradd guest12 -c "usuario convidado" -s /bin/bash -m -p $(openssl passwd "senha123")
passwd guest12 -e

echo "finalizado"
