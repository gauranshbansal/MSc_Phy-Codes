/* Gauransh Bansal F6 Lissajous Figures*/
#include <stdio.h>
#include <math.h>
#define PI 3.14159

float x(float thet,float  n,float  del){
  return sin(thet);
}

float y(float A, float thet,float  n,float  del){
  return A*sin(n*thet+del);
}

int main(){
  float A=3; float del = PI/4;
  int n=2;
  FILE *fp = NULL;
  fp=fopen("ch2q2b4.txt","w");
  for(float thet=0;thet<4*PI;thet+=0.1){
    fprintf(fp,"%f \t %f \n",x(thet, n, del),y(A,thet,n,del));
  }
  fclose(fp);
  printf("ch2q2b4.txt created succesfully");
  return 0;
}
