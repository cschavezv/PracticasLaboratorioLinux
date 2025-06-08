#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main(){
	//Crear un proceso hijo
	int pid = fork();

	if(pid == 0){
		printf("Soy el proceso hijo con PID=%d y PPID=%d\n", getpid(), getppid());
		fflush(stdout);
		char *args[]={"cal", "7", "2005", NULL};
		execvp("/usr/bin/cal", args);
		perror("Error al ejecutar el calendario");
	}else{
		wait(NULL);
		printf("Soy el proceso padre con PID=%d\n", getpid());
		fflush(stdout);
		char *args[]={"date", NULL};
		execvp("date", args);
		perror("Error al ejecutar la fecha actual");
	}
	perror("No se ha podido crear el proceso hijo");
}
