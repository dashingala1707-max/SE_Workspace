#include<stdio.h>
int main()
{
    int a;
    int b=0;
    
    printf("enter any number :");
    scanf("%d",&a);
    
    if(a>b)
    {
        b=a*a;
    }
    else
    {
        printf("invalid number");
    }
    
    printf("the square is :%d",b);
    return 0;
}