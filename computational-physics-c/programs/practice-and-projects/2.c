#include <stdio.h>
#include <math.h>

double y(double x){
  double r=0.5, k=100, a=0.01;
  return (r*x*(1-(x/k)))/(a*x);
}

int main(){
  FILE *fp=NULL;
  fp=fopen("2.dat","w");
  for(double x=0.0;x<10.0;x+=0.01){
    fprintf(fp,"%lf \t %lf \n",x,y(x));
  }
  fclose(fp);
}
  
