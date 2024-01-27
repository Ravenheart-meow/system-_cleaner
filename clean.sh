#!/bin/bash

echo " *************************************************************************"
figlet   "System Cleaner"
echo " *************************************************************************"

if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root. Exiting."
    exit 1
fi

# Prompt user with a yes or no question
echo "This script will clean up, and update you're system"
read -p "Do you want to proceed? (yes/no): " answer

# Check the user's response
if [ "$answer" == "y" ]; then
    echo "Sweet, lets go!!!"
    # Add your commands to execute when the user chooses 'yes'
elif [ "$answer" == "n" ]; then
    echo "Bye Bye then."
    	exit 0
else
    echo "Invalid choice. Please enter 'yes' or 'no'."
fi

echo "@@@@@@@@@@@=-@@@@@@@@@@@" | lolcat
echo "@@@@@@@@@@@--@@@@@@@@@@@" | lolcat
echo "@@@@@@@@@@@--@@@@@@@@@@@" | lolcat
echo "@@@@@@@@@@@--@@@@@@@@@@@" | lolcat
echo "@@@@@@@@@@@--@@@@@@@@@@@" | lolcat
echo "@@@@@@@@@@@--@@@@@@@@@@@" | lolcat
echo "@@@@@@@@@@@--@@@@@@@@@@@" | lolcat
echo "@@@@@@@@@@@-=@@@@@@@@@@@" | lolcat
echo "@@@@@@@@@@@--@@@@@@@@@@@" | lolcat
echo "@@@@@@@@@@@:-@@@@@@@@@@@" | lolcat
echo "@@@@@@@@@@@:=@@@@@@@@@@@" | lolcat
echo "@@@@@@@@@@@:-@@@@@@@@@@@" | lolcat
echo "@@@@@@@@@@@:=@@@@@@@@@@@" | lolcat
echo "@@@@@@@@@@@:=@@@@@@@@@@@" | lolcat
echo "@@@@@@@@@@@:=@@@@@@@@@@@" | lolcat
echo "@@@@@@@@@@@:=@@@@@@@@@@@" | lolcat
echo "@@@@@@@@@@@--@@@@@@@@@@@" | lolcat
echo "@@@@@@@@@@@++@@@@@@@@@@@" | lolcat
echo "@@@@@@@@@@%++%@@@@@@@@@@" | lolcat
echo "@@@@@@@@%******@@@@@@@@@" | lolcat
echo "@@@@@@@%++*++*++%@@@@@@@" | lolcat
echo "@@@@@@@+++*++*+=+@@@@@@@" | lolcat
echo "@@@@@@%+++****+++%@@@@@@" | lolcat
echo "@@@@@@============@@@@@@" | lolcat
echo "@@@@@#============#@@@@@" | lolcat
echo "@@@@@+++++++++++++*@@@@@" | lolcat
echo "@@@@*=+===+==+===+=*@@@@" | lolcat
echo "@@@%================%@@@" | lolcat
echo "@@@===-==========-===@@@" | lolcat
echo "@@*===-=-======-=-===*@@" | lolcat
echo "@#===--=-======-=--===#@" | lolcat
echo "%===---=-======-=---===%" | lolcat
echo "%*+===+=++++++++=====+*%" | lolcat
echo "@@@@@@@@@@@@@@@@@@@@@@@@" | lolcat

echo "Lets Begin"

python3 /home/raven/sys_cleaner/clean.py

free -h

apt-get clean

apt-get autoremove

logrotate -f /etc/logrotate.conf

rm -rf /tmp/*

apt-get purge $(dpkg -l 'linux-*' | awk '/^ii/{print $2}' | grep -E '[0-9]+\.[0-9]+\.[0-9]+-[0-9]+')

swapoff -a
swapon -a

apt-get autoclean

journalctl --vacuum-size=50M

gio trash --empty

pip cache purge

find ~/ -type f -name '*~' -delete

free -h

sudo apt update && sudo apt upgrade -y

echo '********************** ' | lolcat
echo '* All done. Good Job!* ' | lolcat
echo '********************** ' | lolcat 
echo '         \ ' | lolcat
echo '           \ ' | lolcat
echo '            \          __---__ ' | lolcat
echo '                    _-       /--______ ' | lolcat
echo '               __--( /     \ )XXXXXXXXXXX\v. ' | lolcat
echo '             .-XXX(   O   O  )XXXXXXXXXXXXXXX- ' | lolcat
echo '            /XXX(       U     )        XXXXXXX\ ' | lolcat
echo '          /XXXXX(              )--_  XXXXXXXXXXX\ ' | lolcat
echo '         /XXXXX/ (      O     )   XXXXXX   \XXXXX\ ' | lolcat
echo '         XXXXX/   /            XXXXXX   \__ \XXXXX ' | lolcat
echo '         XXXXXX__/          XXXXXX         \__----> ' | lolcat
echo ' ---___  XXX__/          XXXXXX      \__         / ' | lolcat
echo '   \-  --__/   ___/\  XXXXXX            /  ___--/= ' | lolcat
echo '    \-\    ___/    XXXXXX              ---- XXXXXX ' | lolcat
echo '       \-\/XXX\ XXXXXX                      /XXXXX ' | lolcat
echo '         \XXXXXXXXX   \                    /XXXXX/ ' | lolcat
echo '          \XXXXXX      >                 _/XXXXX/ ' | lolcat
echo '            \XXXXX--__/              __-- XXXX/ ' | lolcat
echo '             -XXXXXXXX---------------  XXXXXX- ' | lolcat
echo '                \XXXXXXXXXXXXXXXXXXXXXXXXXX/ ' | lolcat
echo '                  vVXXXXXXXXXXXXXXXXXXVv ' | lolcat
  
echo " *************************************" | lolcat
echo " * GOODBYE HAVE A GREAT DAY BUDDY !! *" | lolcat
echo " *************************************" | lolcat
