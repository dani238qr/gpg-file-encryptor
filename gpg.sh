#!/bin/bash

CURRENT_DIR=$(pwd)

if [ $# -eq 0 ]; then
    echo "Usage: $0  d/e (decrypt/encrypt) <file name>"
    exit 1
fi

command="$1"
file="$CURRENT_DIR/$2"
decr="d"
encr="e"

if [ -f "$file" ]; then
    
    if [ "$1" = "$decr" ]; then
        echo "Decrypting $file"
        echo -n "enter passphrase: "
        read -s password
        echo
        gpg --batch --passphrase "$password" --decrypt $file > ${file%????}

    elif [ "$1" = "$encr" ]; then
        echo "Encrypting $file"
        echo -n "enter passphrase: "
        read -s password
        gpg --batch --passphrase "$password" --symmetric --output $file.gpg $file
        echo 
        echo -n "Do you want to delete unecrypted file? (y/n) "
        read user
        if [ "$user" = "y" ] || [ "$user" = "Y" ]; then
            rm $file
        fi
        echo
        echo "File encrypted succesfully"
        echo
    else
        echo "Invalid argument"
    fi

else
    echo "File not found: $file"
fi
