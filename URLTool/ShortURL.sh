banner() {
clear
printf "\e[0m\n"
printf "\e[0m\e[1;93m    _____ _                _    \e[0m\e[1;92m _    _ _____  _      \e[0m\n"
printf "\e[0m\e[1;93m   / ____| |              | |   \e[0m\e[1;92m| |  | |  __ \| |     \e[0m\n"
printf "\e[0m\e[1;93m  | (___ | |__   ___  _ __| |_  \e[0m\e[1;92m| |  | | |__) | |     \e[0m\n"
printf "\e[0m\e[1;93m   \___ \|  _ \ / _ \|  __| __| \e[0m\e[1;92m| |  | |  _  /| |     \e[0m\n"
printf "\e[0m\e[1;93m   ____) | | | | (_) | |  | |_  \e[0m\e[1;92m| |__| | | \ \| |____ \e[0m\n"
printf "\e[0m\e[1;93m  |_____/|_| |_|\___/|_|   \__| \e[0m\e[1;92m \____/|_|  \_\______|\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[1;93m                           Coded By ASTRO \e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[1;93m                         Telegram :\e[0m\e[1;34m @ASTRO352\e[0m\n"
}
menu() {
printf "\e[0m\n"
printf " \e[0m\e[1;91m[\e[0m\e[1;97m01\e[0m\e[1;91m]\e[0m\e[1;93m Short Url\e[0m\n"
printf " \e[0m\e[1;91m[\e[0m\e[1;97m02\e[0m\e[1;91m]\e[0m\e[1;93m More From Us\e[0m\n"
printf " \e[0m\e[1;91m[\e[0m\e[1;97m00\e[0m\e[1;91m]\e[0m\e[1;91m Exit\e[0m\n"
printf "\e[0m\n"
read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[0m\e[1;97m\en' option
if [[ $option == 1 || $option == 01 ]]; then
shorturl
elif [[ $option == 2 || $option == 02 ]]; then
sleep 1
xdg-open https://github.com/Cyber-ASTR0
sleep 2
banner
menu
elif [[ $option == 0 || $option == 00 ]]; then
sleep 1
printf "\e[0m\n"
exit 1
else
printf " \n\e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi
}
shorturl() {
printf "\e[0m\n"
printf "\e[0m\n"
read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Input The Url : \e[0m\e[1;96m\en' inpurl
printf "\e[0m\n"
printf " \e[0m\e[1;91m[\e[0m\e[1;97m~\e[0m\e[1;91m]\e[0m\e[1;93m Shorting Url...\e[0m\n"
shorturl=$(curl -s http://tinyurl.com/api-create.php?url=$inpurl)
sleep 2
printf "\e[0m\n"
printf " \e[0m\e[1;91m[\e[0m\e[1;97m~\e[0m\e[1;91m]\e[0m\e[1;93m Done !!\e[0m\n"
printf "\e[0m\n"
printf ' \e[0m\e[1;91m[\e[0m\e[1;97m~\e[0m\e[1;91m]\e[0m\e[1;92m Shortned Url :\e[0m\e[1;93m %s \n' $shorturl
printf "\e[0m\n"
sleep 2
printf "\e[0m\n"
printf "\e[0m\n"
exit 1
}
banner
menu

