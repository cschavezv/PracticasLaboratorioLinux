#include <stdio.h>
#include <unistd.h>

int main(){
	char *args[] = {"ls","-l",NULL};
	execvp("ls", args);

	//Si exec tiene èxito esta lìnea nunca se ejecuta
	perror("execvp failed");
	return 1;
}
