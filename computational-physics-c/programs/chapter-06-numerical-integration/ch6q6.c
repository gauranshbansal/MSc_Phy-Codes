#include <stdio.h>
#include <math.h>
#include "gauss.h"

double integrand(double t, double z){
  return cos(z*cos(t))*pow(sin(t),5);
}
double j2(double z){
  if(z==0) return 0;
  int n=12;
  double nodes[12],weights[12];
  gauss(n,nodes, weights);
  double a=0, b=M_PI;
  double xr=0.5*(b-a),xm=0.5*(a+b),sum=0.0;
  for (int i=0;i<n/2;i++){
    double t1=xm+xr*nodes[i];
    double t2=xm-xr*nodes[i];
    sum+=integrand(t1,z)*weights[i];
    sum+=integrand(t2,z)*weights[i];
  }
  return (z*z/8.0)*(sum*xr);
}

void table_j2(){
  printf("z \t j2(z) \n");
  for(double z=0;z<=12;z+=0.5){
    printf("%5.2f \t %.6f \n",z,j2(z));
  }
}

double secant(double a, double b){
  double f1=j2(a);
  double f2=j2(b);
  double c;
  do{
    c=b-f2*((b-a)/(f2-f1));
    a=b; f1=f2;
    b=c; f2=j2(b);
  }
  while (fabs(f2)>1e-6);
  return b;
}

int main(){
  table_j2();
  double r1=secant(5.50,6.00);
  printf("The root is %f. \n",r1);
}
