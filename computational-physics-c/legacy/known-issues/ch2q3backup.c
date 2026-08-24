#include <stdio.h>
#include <math.h>
#define PI 3.14159

float f(float x){
  float t=fmod(x,2*PI);
  int n=(int)(t);
  if(t<0){
    return -1*(x-2*PI*n);
  }
  else if(t>PI){
    return x-2*PI*n;
  }
}

int main(){
  FILE *fp=NULL;
  fp=fopen("ch2q3.txt","w");
  for(float x=-(6)*PI;x<=6*PI;x+=0.1){
    float x1=f(x);
    float y;
    if(x1>=0 && x1<PI){
      y=x1;
    }
    else if(x1>=PI && x1<2*PI){
      y=2*PI-x1;
    }
    else{
      continue;
    }
    fprintf(fp,"%f \t %f \n",x,y);
  }
  fclose(fp);
  printf("\n \n \n File created succesfully as ch2q3.txt \n \n \n");
  return 0;
}
