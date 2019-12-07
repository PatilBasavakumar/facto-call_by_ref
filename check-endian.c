#include<stdio.h>
void main()
{
    int val=0x41424344;
    char *pc;
    pc=&val;
    printf("\n\t %x is the value stored.",*pc);
    if(*pc == 68)
        printf("\n\t it's a Little endian system.\n\n");
    else
        printf("\n\t it's a Big endian system.\n\n");

    return 0;
}
