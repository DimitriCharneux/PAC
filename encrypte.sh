#!/bin/bash


if [ $# -eq 1 ]
then

    openssl enc -base64 -aes-128-cbc -pass pass:"$1" -in decrypte -out encrypte
    openssl enc -base64 -aes-128-cbc -pass pass:"$1" -in client.py -out encClient
    openssl enc -base64 -aes-128-cbc -pass pass:"$1" -in openssl.py -out encOpenssl

else
    echo "Entrez un mot de passe!"
fi
exit 0
