#!/bin/bash

 banner() {
 echo -e ""
 echo ""
 echo -e "\e[1;32m  ██╗██████╗       ██╗███╗   ██╗███████╗ ██████╗   \e[0m"
 echo -e "\e[1;36m  ██║██╔══██╗      ██║████╗  ██║██╔════╝██╔═══██╗ \e[0m"
 echo -e "\e[1;32m  ██║██████╔╝█████╗██║██╔██╗ ██║█████╗  ██║   ██║\e[0m"
 echo -e "\e[1;36m  ██║██╔═══╝ ╚════╝██║██║╚██╗██║██╔══╝  ██║   ██║\e[0m"
 echo -e "\e[1;32m  ██║██║           ██║██║ ╚████║██║     ╚██████╔╝\e[0m"
 echo -e "\e[1;36m  ╚═╝╚═╝           ╚═╝╚═╝  ╚═══╝╚═╝      ╚═════╝\e[0m"
 echo -e
 echo -e
 echo -e "\e[1;36m---------------------------------------------\e[0m"
 echo -e
 echo -e "\e[0;36m--->\e[0m" "\e[1;37m By DZAREL ( CRIME DEVELOPER )\e[0m" "\e[0;36m<---\e[0m"
 echo -e
 echo -e "\e[1;32mGithub:" "\e[1;37mDzarelDeveloper\e[0m"
 echo -e
 echo -e "\e[1;36m---------------------------------------------\e[0m"
 echo ""
 echo -e ""

 }
 restartprogram() {
 echo "
 Opsi itu salah, pilih lagi!
 Pilihlah yang benar"
 sleep 2
 clear
 menuutama
 }


 myip() {
         curl -s http://ip-api.com/
         echo ""
         exit
 }

 targetaip() {
         echo ""
         echo -e "\e[36m Alamat IP Target \e[0m"
         read -p "--->" target
         curl -s http://ip-api.com/$target
         echo -e ""
         exit
 }

 menuutama() {
     clear
         banner
         echo -e "\e[0;36m----\e[0m" "\e[1;33m1.\e[0m" "\e[1;37mInformasi IP Anda\e[0m" "\e[0;36m----\e[0m"
         echo -e "\e[0;36m----\e[0m" "\e[1;33m2.\e[0m" "\e[1;37mInformasi IP Target\e[0m" "\e[0;36m----\e[0m"
         echo -e "\e[0;36m----\e[0m" "\e[1;33m3.\e[0m" "\e[1;37mKeluar\e[0m" "\e[0;36m----\e[0m"
     echo -e "\e[1;35m"
         echo -e "Pilih Salah Satu Opsi:)"
         echo -e ""
         echo -e "\e[1;33m"
         read -p "--->" opt
         if [ $opt -eq 1 ];
                 then
                         myip
         elif [ $opt -eq 2 ];
                 then
                         targetaip

         elif [ $opt -eq 3 ];
                 then
                         echo -e "\e[1;33mTerima Kasih Telah Menggunakan IP Info"
                         exit
         else
                 sleep 1
                 restartprogram
         fi

 }


 menuutama