#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void)
{
    char command[100]="ls";
    char  variable[10];  /* unrelated variable */

	/* This will execute normally ls command */
    printf("Command execution before buffer overflow \n");
    printf("Content of current directory is: \n\n");
    system(command);

    printf("\n\nGive some value to this unrelated variable: ");
    gets(variable);

	/* Now there is possibility of execute unwanted linux commands */
    printf("\n\nCommand execution after buffer overflow \n");
    printf("Content of current directory is: \n\n");
    system(command);
}
