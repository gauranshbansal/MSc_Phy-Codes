#include <stdio.h>
#include <math.h>

double f(double psi, double e, double w, double t){
  return psi-exp(sin(psi)-(w*t));
}
double df(double psi,double e, double w, double t){
  return 1-cos(psi)*exp(sin(psi)-(w*t));
}
double newton(double e, double w, double t){
  double psi=t;
      for (int i=0;i<100;i++){
	double p=psi-f(psi,e,w,t)/(df(psi,e,w,t));
	if(fabs(p-psi)<1e-6){
	  return p;
	}
	psi=p;
      }
      return psi;
  }
int main(){
  double e=0.8, w=1.0, a=2.0;
  FILE *fp=NULL;
  fp=fopen("ch4q4.dat","w");
  for(double t=0;t<2*M_PI;t+=M_PI/100){
    double psi=newton(e,w,t);
    double r=a*(1-e*cos(psi));
    double th=2*atan(sqrt((1+e)/(1-e))*tan(psi/2));
    double x=r*cos(th), y=r*sin(th);
    printf("t=%.2f x=%.3f y=%.3f \n",t,x,y);
    fprintf(fp,"%.3f \t  %.3f \n",x,y);
  }
  fclose(fp);
}
    
  
