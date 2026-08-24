#include <stdio.h>
double f(double alpha, double x){
  return alpha*x*(1.0-x);
}
double euler(double alpha, double x, double h){
  return x+h*f(alpha,x);
}

double rk4(double alpha, double x, double h){
  double k1=f(alpha,x);
  double k2=f(alpha, x+0.5*h*k1);
  double k3=f(alpha,x+0.5*h*k2);
  double k4=f(alpha,x+h*k3);
  return x+(h/6.0)*(k1+2*k2+2*k3+k4);
}

int main(){
  FILE *fp=NULL;
  fp=fopen("ch5q6.dat","w");
  double alpha_start=0.0, alpha_end=4.0, dalpha=0.05;
  double x0=0.2,h=1.0;
  int transient=1000;
  int record=200;
  int use_rk4=1;
  for(double alpha=alpha_start; alpha<=alpha_end;alpha+=dalpha){
    double x=x0;
    for(int i=0;i<transient;i++){
      if(use_rk4=1){
	x=rk4(alpha,x,h);
      }
      else{
        x=euler(alpha,x,h);
      }
    }
    //now record steady points
    for(int i=0;i<record;i++){
	if(use_rk4=1){
	  x=rk4(alpha,x,h);
	}
	else{
	  x=euler(alpha,x,h);
	}
	printf("%.4lf \t %.4lf \n",alpha,x);
	fprintf(fp,"%.4lf \t %.4lf \n",alpha,x);
      }
  }
  fclose(fp);
}
