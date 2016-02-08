#!/bin/bash


if [ $# -eq 1 ]
then

    openssl enc -d -base64 -aes-128-cbc -pass pass:"$1" -in encrypte -out decrypte
    openssl enc -d -base64 -aes-128-cbc -pass pass:"$1" -in encClient -out client.py
    openssl enc -d -base64 -aes-128-cbc -pass pass:"$1" -in encOpenssl -out openssl.py

else
    echo "Entrez un mot de passe!"
fi
exit 0
