#include <stdio.h>
#include <math.h>
#define PI 3.14159

double func(float z){
  double t=z;
  double t1;
  double mul=cos(PI*pow(z,2)/2);
  double s=z;
 for(int i=1;i<10;i++){
  t*=((-1)*pow(PI,2)*pow(z,4));
  int rax=1;
  for (int j=1;j<=(4*i+1);j+=4){
    rax*=j; 
  }
  t1=t/rax;
  s+=t1;
 }
 return mul*s;
}

int main(){
  FILE *fp=NULL;
  fp=fopen("ch3q4.dat","w");
  for(float x=0.01;x<=1;x+=0.1){
    double sum=func(x);
    printf("%lf \t %lf \n",x,sum);
    fprintf(fp,"%lf \t %lf \n",x,sum);
  }
  printf("\n \n \n File created succesfully as ch3q4.dat \n \n \n");
}
