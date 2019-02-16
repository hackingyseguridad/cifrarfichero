#!/bin/bash
cat << "INFO"
   __                          _     _   _             
  / _|                        | |   | | | |            
 | |_ _   _ ___________ _ __  | |__ | |_| |_ _ __  ___ 
 |  _| | | |_  /_  / _ \ '__| | '_ \| __| __| '_ \/ __|
 | | | |_| |/ / / /  __/ |    | | | | |_| |_| |_) \__ \
 |_|  \__,_/___/___\___|_|    |_| |_|\__|\__| .__/|___/ v 2.0
                                            | |        
         http://www.hackingyseguridad.com   |_|        
INFO
if [ -z "$1" ]; then
        echo
        echo "Genera CA root y certificados para las peticiones https "
        echo "Descubre ficheros en  url de sitio web por 200 OK.. "
        echo "Uso: $0 <https://dominio.com>"
        echo "Tiempo estimado 1 hora ..."
        exit 0
fi
echo
echo "Fuzzer de: " $1
echo

openssl aes-256-cbc -a -salt -in $1 -out secreto.txt.enc
