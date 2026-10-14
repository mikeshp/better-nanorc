#!/bin/bash

SYSTEM_NANORC=/etc/nanorc
DISTRO_NANORC=debian_13.nanorc
EXTRA_ADDRESS=/usr/share/nano/extra/

echo
echo -e "Choose a category to edit:"
echo

echo -e "\t 1. - Current system nanorc (in place)"
echo -e "\t 2. - Distro specific nanorc (in project)"
echo -e "\t 3. - Language specific nanorc (in place)"
echo

read -p "> " USER_INPUT

if   [[ USER_INPUT -eq "1" ]]; then
	sudo nano $SYSTEM_NANORC
	exit
elif [[ USER_INPUT -eq "2" ]]; then
	FILE_FOLDER=distro/
	EDIT_FOLDER=distro/
elif [[ USER_INPUT -eq "3" ]]; then
	FILE_FOLDER=extra/
	EDIT_FOLDER=$EXTRA_ADDRESS
else    echo "Wrong input"
	exit
fi

for FILE in $( ls -1 $FILE_FOLDER )
do
	EDIT_FILE+=("$FILE")
done

echo
echo -e "Choose a file to edit:"
echo

for FILE_NUMBER in "${!EDIT_FILE[@]}"
do
	echo -e "\t $(( FILE_NUMBER + 1 )). - ${EDIT_FILE[$FILE_NUMBER]}"
done

read -p "> " USER_INPUT

if (( $USER_INPUT - 1 > $FILE_NUMBER || $USER_INPUT - 1 < 0 )); then
	echo -e "Wrong input"
	exit
fi

sudo nano $EDIT_FOLDER${EDIT_FILE[$USER_INPUT-1]}
