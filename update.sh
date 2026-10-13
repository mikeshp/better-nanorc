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

echo -e "from $SYSTEM_NANORC to distro/$DISTRO_NANORC"
cp $SYSTEM_NANORC distro/$DISTRO_NANORC

echo

for LANG in "${LANG_NANORC[@]}"
do
	echo -e "from $EXTRA_ADDRESS$LANG to extra/$LANG"
	cp $EXTRA_ADDRESS$LANG extra/$LANG
done

echo
echo -e "Updating git status..."
echo

git status
