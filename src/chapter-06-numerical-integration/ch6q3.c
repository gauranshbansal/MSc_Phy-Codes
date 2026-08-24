#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include "gauss.h"

double integrand (double r, double E){
  double expr =2*E*r*r+2*r-1;
  if(expr<=0.0)
    return 0.0;
  return 1.0/(r*sqrt(expr));
}
double GaussIntegral(double a, double b, double E, int n){
  double x[10],w[10];
  double xm=(a+b)/2.0,xr=(b-a)/2.0, sum=0.0;
  gauss(n,x,w);
  for(int i=0;i<n/2;i++){
    double t1=xm+xr*x[i];
    double t2=xm-xr*x[i];
    sum+=integrand(t1,E)*w[i];
    sum+=integrand(t2,E)*w[i];
  }
  return sum*xr;
}
void compute_orbit(double E, double r0, double rm, char *filename){
  int N=50;
  double R[50],theta[50],x[50],y[50];
  for(int i=0;i<N;i++){
    R[i]=r0+(rm-r0)*i/(N-1);
    theta[i]=GaussIntegral(r0,R[i],E,12);
    x[i]=R[i]*cos(theta[i]);
    y[i]=R[i]*sin(theta[i]);
  }
  FILE *fp=fopen(filename,"w");
  for (int i=0;i<N;i++){
    fprintf(fp,"%f \t %f \n",x[i],y[i]);
  }
  fclose(fp);
    printf("Orbit saved to %s \n",filename);
}

int main(){
  compute_orbit(-0.25,0.6,3.4,"orbit_nrg0.25.dat");
  double r0_E0=0.5;
  double rm_E0=5;
  compute_orbit(0.0,r0_E0,rm_E0,"orbit_nrg0.dat");
  return 0;
}
