#!/bin/bash

passwd=$1

cat > /tmp/testdata.sql <<EOF
INSERT  INTO "flavors" ("id","name","cpu","memory","disk") VALUES (1,'m1.tiny',1,256,8);
INSERT  INTO "images" ("id","name","os_code","format","architecture") VALUES (1,'cirros.qcow2','cirros','qcow2','x86-64');
INSERT  INTO "subnets" ("id","name","network","netmask","gateway","start","end","vlan","type","router") VALUES (1,'test','192.168.127.0','255.255.255.0','192.168.127.1/24','192.168.127.2','192.168.127.254',11893757,'internal',0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.2/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.3/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.4/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.5/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.6/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.7/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.8/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.9/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.10/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.11/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.12/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.13/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.14/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.15/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.16/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.17/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.18/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.19/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.20/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.21/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.22/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.23/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.24/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.25/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.26/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.27/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.28/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.29/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.30/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.31/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.32/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.33/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.34/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.35/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.36/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.37/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.38/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.39/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.40/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.41/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.42/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.43/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.44/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.45/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.46/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.47/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.48/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.49/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.50/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.51/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.52/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.53/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.54/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.55/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.56/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.57/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.58/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.59/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.60/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.61/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.62/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.63/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.64/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.65/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.66/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.67/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.68/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.69/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.70/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.71/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.72/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.73/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.74/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.75/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.76/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.77/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.78/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.79/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.80/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.81/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.82/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.83/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.84/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.85/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.86/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.87/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.88/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.89/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.90/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.91/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.92/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.93/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.94/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.95/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.96/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.97/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.98/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.99/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.100/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.101/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.102/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.103/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.104/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.105/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.106/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.107/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.108/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.109/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.110/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.111/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.112/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.113/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.114/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.115/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.116/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.117/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.118/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.119/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.120/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.121/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.122/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.123/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.124/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.125/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.126/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.127/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.128/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.129/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.130/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.131/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.132/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.133/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.134/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.135/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.136/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.137/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.138/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.139/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.140/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.141/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.142/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.143/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.144/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.145/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.146/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.147/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.148/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.149/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.150/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.151/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.152/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.153/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.154/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.155/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.156/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.157/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.158/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.159/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.160/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.161/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.162/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.163/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.164/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.165/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.166/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.167/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.168/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.169/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.170/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.171/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.172/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.173/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.174/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.175/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.176/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.177/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.178/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.179/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.180/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.181/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.182/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.183/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.184/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.185/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.186/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.187/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.188/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.189/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.190/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.191/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.192/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.193/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.194/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.195/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.196/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.197/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.198/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.199/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.200/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.201/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.202/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.203/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.204/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.205/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.206/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.207/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.208/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.209/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.210/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.211/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.212/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.213/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.214/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.215/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.216/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.217/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.218/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.219/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.220/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.221/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.222/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.223/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.224/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.225/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.226/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.227/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.228/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.229/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.230/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.231/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.232/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.233/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.234/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.235/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.236/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.237/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.238/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.239/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.240/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.241/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.242/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.243/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.244/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.245/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.246/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.247/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.248/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.249/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.250/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.251/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.252/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.253/24','255.255.255.0','ipv4',1,0);
INSERT  INTO "addresses" ("address","netmask","type","subnet_id","interface") VALUES ('192.168.127.254/24','255.255.255.0','ipv4',1,0);
EOF

psql -U postgres hypercube -f /tmp/testdata.sql