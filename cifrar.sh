#!/bin/bash
cat << "INFO"
CIFRAR FICHERO  V.1.0 
http://www.hackingyseguridad.com
INFO
if [ -z "$1" ]; then
        echo
        echo "Cifrar fichero"
        echo "Uso: $0 <fichero>"
        exit 0
fi
echo
echo "Cifrado del fichero : " $1
echo
openssl aes-256-cbc -a -salt -in $1 -out $1.enc
