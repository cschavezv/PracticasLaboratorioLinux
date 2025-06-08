#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int main(){
	int pid = fork();
	if(pid == 0){
		printf("Soy el proceso hijo con PID=%d y PPID=%d", getpid(), getppid());
		fflush(stdout);
		//execl("/usr/bin/ps", "ps", "-e", (char *)NULL);
		system("ps -e");
	}else{
		wait(NULL);
	}
	return 0;
}
