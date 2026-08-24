/*Gauransh Bansal F6*/
/* Chapter 2 Question 1 PART B*/
#include <stdio.h>
#include <math.h>
#define PI 3.14159

int main(){
  FILE *fp=NULL;
  fp=fopen("circle.txt","w");
  for(int i=0;i<361;i++){
    float x=5+3*cos(i*PI/180);
    float y=5+3*sin(i*PI/180);
    fprintf(fp,"%6.2f \t %6.2f \n",x,y);
  } 
  fclose(fp);
  printf("\n \n \n File saved as circle.txt successfully. \n\n");
}
