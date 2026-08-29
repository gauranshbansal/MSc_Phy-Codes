#include <stdio.h>
#include <math.h>
#include "gauss.h"

double integrand(double t,double z){
  return cos(z*cos(t));
}

double J0(double z){
  int n=12;
  double nodes[12],weights[12];
  gauss(n,nodes, weights);
  double a=0, b=2*M_PI;
  double xr=0.5*(b-a),xm=0.5*(a+b),sum=0.0;
  for (int i=0;i<n/2;i++){
    double t1=xm+xr*nodes[i];
    double t2=xm-xr*nodes[i];
    sum+=integrand(t1,z)*weights[i];
    sum+=integrand(t2,z)*weights[i];
  }
  return (sum*xr)/(2*M_PI);
}
void (table_J0()){
  printf("z \t J0(z) \n");
  for (double z=0;z<12;z+=0.5){
    printf("%5.2f \t %.6f \n",z,J0(z));
  }
}


double secant(double a, double b){
  double f1=J0(a);
  double f2=J0(b);
  double c;
  do{
    c=b-f2*((b-a)/(f2-f1));
    a=b; f1=f2;
    b=c;f2=J0(b);
  }
  while(fabs(f2)>1e-6);
  return b;
}

int main(){
  table_J0();
  double r1=secant(2.00,2.50);
  double r2=secant(5.50,6.00);
  double r3=secant(7.50,8.00);
  printf("The roots are %f, %f and %f. \n",r1,r2,r3);
}
  
