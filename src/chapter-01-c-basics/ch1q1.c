#include <stdio.h>
#include <math.h>
#define PI 3.14159 

int main(){
  printf("\n \n This is the work done on 6 August 2025 \n");
  printf("\n       x    |     sin(x)      |    cos(x)      |  tan(x)     | \n");
  for (float i = 0; i< (PI/4) ;i+=0.157){
    printf("%f    |     %f    |     %f   |   %f  | \n",i,sin(i),cos(i),tan(i)); 
}
}
