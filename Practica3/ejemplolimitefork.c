#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main(){
	int i = 0;
	while(1){
		pid_t pid = fork();
		if(pid < 0){
			perror("error al crear el fork");
			break;
		}else if(pid == 0){
			sleep(2);
			exit(0);
		}	
		i++;
		printf("Proceso #%d creado\n", i);
	}		
	return 0;
}
