#!/bin/bash
echo "Criando os diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec 

echo "Diretorios criados: publico,adm,ven,sec"
echo "-------"
echo "Criando grupos de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados: GRP_ADM,GRP_VEN,GRP_SEC"
echo "-------"
echo "Criando usuários"

useradd carlos -m -s /bin/bash -p $(openssl -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl -crypt Senha123) -G GRP_SEC

echo "Usuários criados: carlos,maria,joao,debora,sebastiana,roberto,josefina,amanda,rogerio"
echo "-------"
echo "Especificando permissões dos diretorios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chown 770 /adm
chown 770 /ven
chown 770 /sec
chown 777 /publico

echo "Especificações definidas"
echo "-------"
echo "Instruções encerradas"