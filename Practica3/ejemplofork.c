#include <stdio.h>
#include <unistd.h>

int varCompartida = 10;
int contador = 0;

int main(){
	printf("Ejemplo de fork.\n");
	printf("Inicio del proceso padre. PID=%d, PPID=%d\n",getpid(), getppid());
	if(fork() == 0){
		/*Proceso hijo*/
		printf("Inicio del proceso hijo. PID=%d, PPID=%d\n", getpid(), getppid());
		while(contador != 10){
			varCompartida++;
			contador++;
			printf("varCompartida PH = %d\n", varCompartida);
		}
		sleep(1);
	}else{
		/*Proceso padre*/
		printf("Continuacion del padre. PID=%d\n",getpid());
		while(contador != 10){
  			varCompartida = varCompartida + 10;
			contador++;
			printf("varCompartida PP = %d\n", varCompartida);

		}
		sleep(1);
	}
	printf("Fin del proceso %d\n", getpid());
	return 0;
}
