#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include "lib1.h"
#include "lib2.h"

void namelenght(char *str)
{
    int len;

    printf("Enter your name: ");
    gets(str);
    len = strlen(str); 

    printf("Your name %s has %d characters in it\n", str, len);

}
void usedrandom()
{
    printf("5 random numbers are \n");
    for(int i=0;i<5;i++)
    printf("%d \n",rand());
}


int main()
{
    char name[30];
    namelenght(name);
    usedrandom();




    return 0;
}