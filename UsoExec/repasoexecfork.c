#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/wait.h>

int main(){
	int pid = fork();
	if(pid == 0){
		//Proceso hijo
		printf("Soy el proceso hijo con PID=%d y PPID=%d\n", getpid(), getppid());
		fflush(stdout);//forzar a que se imprima antes de ser reemplazado por exec
		execl("/usr/bin/ls","ls","-l",(char *)NULL);
		perror("execl fallò");
		return 0;
	}else{
		//Proceso padre
		wait(NULL);
		printf("Proceso hijo finalizado");
	}

}

