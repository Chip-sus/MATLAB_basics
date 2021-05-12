#include <stdio.h>
#include <string.h>

int main(void)
{
    char buff[15];
    int pass = 0;

    printf("\n Enter the password : ");
    gets(buff);

    /* Normally password is not readable and not hardcoded inside code */
    if(strcmp(buff, "thegeekstuff"))
    {
        printf ("\n\n Wrong Password \n\n");
    }
    else
    {
        printf ("\n\n Correct Password \n\n");
        pass = 1;  /*This will allow access to priviledged area */
    }

    /* Normally here will be lot of unrelated code code */

    if(pass!=0)
    {
    	printf("Now the variable pass = %d\n",pass);
        /* Now Give root or admin rights to user*/
        printf("*************************************************************************************\n");
        printf ("\n This is the priviledged part of code which shoud require password to get executed\n Root privileges given to the user \n\n");
        printf("*************************************************************************************\n");
    }

    return 0;
}
