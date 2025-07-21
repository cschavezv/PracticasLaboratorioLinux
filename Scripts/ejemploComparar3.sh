#!/bin/bash
a=$1
if [ $a -gt 10 ]; then #solo mayor que 
	echo "El valor es mayor a 10"
else
	echo "El valor es menor o igual a 10"
fi
