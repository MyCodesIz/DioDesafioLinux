#!/bin/bash


echo "Diretorios..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Grupos Usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Usuarios..."

useradd user1 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd user2 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd user3 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd user4 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd user5 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd user6 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd user7 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd user8 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd user9 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Permissões diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "FIM..."