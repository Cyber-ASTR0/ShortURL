#!/bin/bash
# Coded By ASTRO
clear

C1='\e[1;32m' # COLOR GREEN
C2='\e[1;37m' # COLOR WHITE
C3='\e[1;31m' # COLOR RED
C4='\e[1;33m' # COLOR ORANGE
C5='\e[0m'    # DEFALUT

function banner() {

	printf "\n"
	printf "$C4    _____ _                _    $C1 _    _ _____  _      \n"
	printf "$C4   / ____| |              | |   $C1| |  | |  __ \| |     \n"
	printf "$C4  | (___ | |__   ___  _ __| |_  $C1| |  | | |__) | |     \n"
	printf "$C4   \___ \|  _ \ / _ \| '__| __| $C1| |  | |  _  /| |     \n"
	printf "$C4   ____) | | | | (_) | |  | |_  $C1| |__| | | \ \| |____ \n"
	printf "$C4  |_____/|_| |_|\___/|_|   \__| $C1 \____/|_|  \_\______|\n\n"
	printf "$C4                         CODED BY ASTRO\n"
	printf "$C4                       TELEGRAM :\e[1;34m @ASTRO352 \n"

}

function menu() {

	trys=1
	printf "$C3[$C2""1$C3]$C2 SHORT URLs\n"
	printf "$C3[$C2""2$C3]$C2 UNSHORT URLs\n"
	printf "$C3[$C2""3$C3]$C2 MY GITHUB ACC\n"
	printf "$C3[$C2""4$C3]$C2 EXIT\n"

}

function enter() {

	if [ "$trys" -gt "5" ]; then
		printf "\e[1;31m[\e[1;37m!\e[1;31m]\e[1;37m MANY INCORRECT TRYS \e[1;31m!\e[1;37m\n"
		printf "$C5"
		exit
	fi
	printf "$C3""root$C2@$C3""ShortURLs$C2"":~$""$C2 "
	read option
	trys=$(expr $trys + 1)
	case "$option" in
		1)
			if ! [ -d "URLTool" ]; then
				printf "\n\e[1;31m[\e[1;37m!\e[1;31m]\e[1;37m FOLDER \e[1;31m[\e[1;37mURLTool\e[1;31m]\e[1;37m NOT FOUND \e[1;31m!\e[1;37m\n"
				printf "$C5"
				exit
			fi
			cd URLTool; bash ShortURL.sh
			printf "\n\e[1;32m[\e[1;37m√\e[1;32m]\e[1;37m DONE \e[1;32m!\e[1;37m\n"
			cd ..
			exit
		;;
		2)
			if ! [ -d "URLTool" ]; then
				printf "\n\e[1;31m[\e[1;37m!\e[1;31m]\e[1;37m FOLDER \e[1;31m[\e[1;37mURLTool\e[1;31m]\e[1;37m NOT FOUND \e[1;31m!\e[1;37m\n"
				exit
			fi
			cd URLTool; bash unShort.sh
			printf "\n\e[1;32m[\e[1;37m√\e[1;32m]\e[1;37m DONE \e[1;32m!\e[1;37m\n"
			cd ..
			exit
		;;
		3)
			xdg-open https://github.com/Cyber-ASTR0
			enter
		;;
		4)
			printf "\n"
			printf "\e[1;31m[\e[1;37m+\e[1;31m]\e[1;37m BEY BEY \e[1;31m!\e[1;37m\n"
			exit
		;;
		exit)
			printf "\n"
			printf "\e[1;31m[\e[1;37m+\e[1;31m]\e[1;37m BEY BEY \e[1;31m!\e[1;37m\n"
			exit
		;;
		EXIT)
			printf "\n"
			printf "\e[1;31m[\e[1;37m+\e[1;31m]\e[1;37m BEY BEY \e[1;31m!\e[1;37m\n"
			exit
		;;
		0)
			printf "\n"
			printf "\e[1;31m[\e[1;37m+\e[1;31m]\e[1;37m BEY BEY \e[1;31m!\e[1;37m\n"
			exit
		;;
		*)
			printf "\e[1;31m[\e[1;37m!\e[1;31m]\e[1;37m INCORRECT ENTER \e[1;31m!\e[1;37m\n\n"
			enter
		;;
	esac
	exit

}

banner
menu
enter
