#!/bin/bash
a=$1
if [ $a -lt 10 ]; then #solo menor a
	echo "El valor es menor a 10"
else
	echo "El valor mayor o igual a 10"
fi
