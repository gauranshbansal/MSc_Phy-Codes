#include <stdio.h>
#include <math.h>
#define PI 3.14159

float f(float x){
  float t=fmod(x,2*PI);
  if (t<0){
    t+=2*PI;
  }
  return (t<2*PI)?t:2*PI-t;
  }
int main(){
  FILE *fp=NULL;
  fp=fopen("ch2q3.txt","w");
  float y;
  for(float x=-(6)*PI;x<=6*PI;x+=0.1){
    y=f(x);
    fprintf(fp,"%f \t %f \n",x,y);
  }
  fclose(fp);
  printf("\n \n \n File created succesfully as ch2q3.txt \n \n \n");
  return 0;
}
