#include <stdio.h>
#include <math.h>

double fx(double x, double y){
  double gam1=0.25, gam2=0.01;
  return gam1*x-gam2*x*y;
}

double fy(double x, double y){
  double gam3=1, gam4=0.01;
  return -gam3*y+gam4*x*y;
}  

int main(){
  FILE *fp=NULL;
  fp=fopen("ch5q3.txt","w");
  double x=100,y=5,t=0,tf=20,h=0.001,k1,k2,k3,k4,l1,l2,l3,l4;
  int steps=(int)((tf-t)/h);
  for(int i=0;i<steps;i++){
  k1=h*fx(x,y);
  l1=h*fy(x,y);
  k2=h*fx(x+0.5*k1,y+0.5*l1);
  l2=h*fy(x+0.5*k1,y+0.5*l1);
  k3=h*fx(x+0.5*k2,y+0.5*l2);
  l3=h*fy(x+0.5*k2,y+0.5*l2);
  k4=h*fx(x+k3,y+l3);
  l4=h*fy(x+k3,y+l3);
  t+=h;
  x+=(k1+2*k2+2*k3+k4)/6.0;
  y+=(l1+2*l2+2*l3+l4)/6.0;
  if(i%100==0){
    printf("%lf \t %lf \t %lf \n",t,x,y);
      fprintf(fp,"%lf \t %lf \t %lf \n",t,x,y);
    }
  }
    printf(" \n File created succesfully! \n");
    fclose(fp);
}
