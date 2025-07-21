#rango
#!/bin/bash
ciudad=(Tokyo Lima Madrid Berlin)
echo ${ciudad[3]:1:3} #Imprime solo las char que estèn dentro del rango 1 a 3. Es decir, imprime char 1, 2 y 3 (erl)
