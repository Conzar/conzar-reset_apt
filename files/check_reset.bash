#!/bin/bash
#
# Checks if a file exists used to determine
# if the reset_apt should clear the apt cache.
#
test -e $1
if [ $? -eq 1 ]; then 
	exit 0;
fi
exit 1;