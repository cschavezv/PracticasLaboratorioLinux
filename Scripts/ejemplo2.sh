#!/bin/bash
#Se van a realizar operaciones aritmèticas con dos variables que se mandaran como paràmetro

x=$1; #$n donde n es el nùmero del argumento se usa para referenciar argumentos mandados por el usuario a la hora de ejecutar el script
y=$2;

echo "Se realiza la suma de los dos nùmeros:"
let suma=x+y
echo $suma

echo "Se realiza la resta de los dos nùmeros:"
let resta=x-y
echo $resta

echo "Se realiza la multiplicaciòn de los dos nùmeros:"
let mult=x*y
echo $mult

echo "Se realiza la divisiòn de los dos nùmeros:"
echo "scale=2;$x/$y"|bc #bc es basic calculator, se usa una escala de 2 decimales y se divide referenciando a cada variable
