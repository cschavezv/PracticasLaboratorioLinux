#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/wait.h>

int main(){
	int pid = fork();
	if(pid < 0){
		printf("No se ha podido crear el proceso hijo");
		return 0;
	}else if(pid == 0){
		//Proceso hijo
		printf("Soy el proceso hijo con PID=%d y PPID=%d\n", getpid(), getppid());
		fflush(stdout);
		char *args[] = {"du","-sh", "/home", NULL};
		execvp("du", args);
		perror("execvp fallò");
	}else{
		//Proceso padre
		wait(NULL);
		printf("Soy el proceso padre con PID=%d, como el hijo ya terminò, mostrarè la fecha actual\n", getpid());
		fflush(stdout);
		execl("/usr/bin/date", "date", (char *)NULL);
		perror("execl fallò");
	}
	return 0;
}

