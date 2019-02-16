#
#!/bin/bash
openssl aes-256-cbc -a -salt -in $1 -out secreto.txt.enc
