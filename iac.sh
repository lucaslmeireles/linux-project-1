#! /bin/bash

echo "Criando Diretorios"

mkdir /publico
mkdir /adm
mkdir /vend
mkdir /sec

echo "Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Usuario"

useradd carlos -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_ADM
useradd maria  -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_ADM
useradd joao  -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_VEN
useradd sebastina  -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_VEN
useradd josefina -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd  Senha123)  -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd  Senha123)  -G GRP_SEC


chown root:GRP_ADM /adm 
chown root:GRP_VEN /vend 
chown root:GRP_SEC /sec 


chmod 770 /adm
chmod 770 /vend
chmod 770 /sec
chmod 777 /publico

echo "FIM"
