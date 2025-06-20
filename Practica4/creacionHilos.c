#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>

void *sumarConEntero(void *arg){
	int *valorParametro = (int *)arg; //se realiza un casteo
	int valorFijo = 10;
	int sumaValores = *valorParametro + valorFijo;
	printf("El valor de la suma es %d\n", sumaValores);
}

int main(){
	pthread_t h1;
	pthread_t h2;
	pthread_t h3;
	pthread_t h4;
	pthread_t h5;
	int valor1 = 5;
	int valor2 = 6;
	int valor3 = 7;
	int valor4 = 8;
	int valor5 = 9;
	pthread_create(&h1, NULL, sumarConEntero, &valor1);
	pthread_join(h1, NULL);
	pthread_create(&h2, NULL, sumarConEntero, &valor2);
        pthread_join(h2, NULL);
	pthread_create(&h3, NULL, sumarConEntero, &valor3);
        pthread_join(h3, NULL);
	pthread_create(&h4, NULL, sumarConEntero, &valor4);
        pthread_join(h4, NULL);
	pthread_create(&h5, NULL, sumarConEntero, &valor5);
        pthread_join(h5, NULL);
	return 0;
}
