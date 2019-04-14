#!/bin/sh

if [ $1 ] ; then
    while read ligne
    do
	echo $ligne > file
	cat file | awk '{print $3, $9}' | grep '\<'$1
	rm file
    done
else
    echo ""
fi

