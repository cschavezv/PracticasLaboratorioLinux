#!/bin/bash
echo "Escriba un nùmero del 1 al 10"
read x
case $x in
	1)
		echo "EScribiò uno"
	;;
	2)
	       	echo "Escribiò dos"
	;;
	*)
		echo "Me rindo"
	;;
esac
