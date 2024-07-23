This repository contains a bash script for encrypting and decrypting files using GPG (GNU Privacy Guard).
The script provides two functionalities: encryption and decryption of files.


Installation


Install GPG:


sudo apt-get install gnupg

git clone https://github.com/dani238qr/gpg-file-encryptor

cd gpg-file-encryptor

To use the script from any directory, you can copy it to /usr/local/bin and set the appropriate permissions.


sudo cp gpg_script.sh /usr/local/bin/gpg_script

sudo chmod +x /usr/local/bin/gpg_script

sudo apt-get update


Encrypt a File

gpg_script e myfile.txt


Decrypt a File

gpg_script d myfile.txt.gpg





Note

During encryption, you will be prompted to enter a passphrase.

During decryption, you will be prompted to enter the passphrase used for encryption.

For encryption, you will be asked if you want to delete the original unencrypted file after encrypting it.



