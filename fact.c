#include<stdio.h>
long int fact(int*);

int main(void)
{
    int num;
    long int res;
    printf("\n\t Enter a number: ");
    scanf("%d", &num);
    int n = num;
    res = fact(&num);
    printf("\n\t Factorial of %d is %ld\n",n,res);

    return 0;
}

long int fact(int *n)
{
    long int val = 1;
    int fact = *n;
    while(fact > 1)
        val = val*(fact--);
    return val;
}
