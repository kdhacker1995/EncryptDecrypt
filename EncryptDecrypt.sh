#!/bin/bash

# EncryptDecrypt v1.0
# Code by: Koushik Suthar (You don't become a Coder by just changing my script)
# Github: https://github.com/kdhacker1995
# Only for Linux Users
# This script is use for Encrypt your data with Key and Decrypt data by using Key only.

clear
printf "\n"
printf "\e[101m\e[1;77m*** Welcome to Encrypt and Decrypt Script v1.0 ***\e[0m\n"
		printf "              \e[101m\e[1;77m[\e[5mBy Koushik Suthar\e[25m]\e[0m\n"
echo "________________________________________________________"


menu() {

clear
printf "\n"
printf "\e[101m\e[1;77m*** \e[1mWelcome to Encrypt and Decrypt Script v1.0\e[22m ***\e[0m\n"
		printf "              \e[101m\e[1;77m[\e[5mBy Koushik Suthar\e[25m]\e[0m\n"
		
echo "________________________________________________________"


	echo " "
	printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m Encrypt\e[0m\n"
	printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m Decrypt\e[0m\n"
	printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;93m Exit\e[0m\n"
	read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m\en' option
	echo " "	

if [[ $option == 1 || $option == 01 ]]; then
	printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose File Form Below....\e[0m\en\n"
	echo ""
	ls
	echo ""
	printf "\e[1;92mChoose File For Encrypt : \e[0m\en"
	read f1;
	gpg -c $f1
	printf "\e[1;92m$f1 has been Encrypted\e[0m\en\n"
	rm -r $f1
	sleep 3
	#echo -n "Press any key to continue..."
	menu

elif [[ $option == 2 || $option == 02 ]]; then
	printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose File Form Below....\e[0m\en\n"
	echo ""
	ls
	echo ""
	printf "\e[1;92mChoose File For Decrypt : \e[0m\en"
	read f2;
	gpg -d $f2
	gpg -o $f2.txt $f2
 	printf "\e[1;92m$f2 has been Decrypted \e[0m\en\n"
 	sleep 3
 	#echo -n "Press any key to continue..."
 	menu

elif [[ $option == 3 ]]; then
	clear
	exit 1

else
	printf "\e[1;93m [!] Invalid option!\e[0m\n"
	sleep 1
	clear
	menu
fi
}
menu
