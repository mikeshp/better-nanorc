#!/bin/bash

SYSTEM_NANORC=/etc/nanorc
DISTRO_NANORC=debian_13.nanorc
EXTRA_ADDRESS=/usr/share/nano/extra/

for LANG in $(ls -1 extra/)
do
	LANG_NANORC+=("$LANG")
done

echo
echo -e "Copying files..."
echo

echo -e "from distro/$DISTRO_NANORC to $SYSTEM_NANORC"
sudo cp distro/$DISTRO_NANORC $SYSTEM_NANORC

echo

sudo mkdir -p $EXTRA_ADDRESS

for LANG in "${LANG_NANORC[@]}"
do
	echo -e "from extra/$LANG to $EXTRA_ADDRESS$LANG"
	sudo cp extra/$LANG $EXTRA_ADDRESS$LANG
done

echo
echo -e "All nanorc files installed:"
echo

echo -e "ls -lh $SYSTEM_NANORC"
ls -lh $SYSTEM_NANORC

echo

echo -e "ls -lh $EXTRA_ADDRESS"
ls -lh $EXTRA_ADDRESS
