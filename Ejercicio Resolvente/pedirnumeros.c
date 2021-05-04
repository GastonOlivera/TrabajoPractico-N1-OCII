#include <stdio.h>
#include <stdlib.h>
 
extern void Resolventeasm(float A , float B, float C);

int main()
{
    float A,B,C;

    printf("Este programa resuelve la formula Resolvente\n");
    printf("----------------------------------------------\n");
    fflush(stdin);
    printf("Ingrese el Valor A:  ");
    scanf("%f", &A );
    fflush(stdin);
    printf("Ingrese el Valor B:  ");
    scanf("%f", &B );
    fflush(stdin);
    printf("Ingrese el Valor C:  ");
    scanf("%f", &C );
    fflush(stdin);

    printf("Su formula es:%.3f",A);
    printf("x2+ %.3f",B);
    printf("x+ %.3f",C);
    printf("=0\n");
	Resolventeasm(A,B,C);
	return 0;
    

}
