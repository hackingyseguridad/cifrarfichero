#!/bin/bash
cat << "INFO"
   _____ _  __                
  / ____(_)/ _|               
 | |     _| |_ _ __ __ _ _ __ 
 | |    | |  _| '__/ _` | '__|
 | |____| | | | | | (_| | |   
  \_____|_|_| |_|  \__,_|_|   V.1.0 
   http://www.hackingyseguridad.com

INFO
if [ -z "$1" ]; then
        echo
        echo "Cifrar fichero "
        echo "Uso: $0 <fichero>"
        exit 0
fi
echo
echo "Cifrado del fichero : " $1
echo

openssl aes-256-cbc -a -salt -in $1 -out secreto.txt.enc
