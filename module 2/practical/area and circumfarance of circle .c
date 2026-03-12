#include<stdio.h>
int main()
{
    
    float radius;
    float area;
    float circumfarace;
    float pi = 3.14;

    printf("enter the radius of circle :");
    scanf("%f",&radius);

    area = pi * radius * radius;
    circumfarace = 2 * pi * radius;

    printf("\n area of circle is :%f",area);
    printf("\n circumfarance of circle is :%f",circumfarace);
    
     return 0;
}