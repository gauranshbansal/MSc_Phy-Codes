#include <stdio.h>
#include <math.h>

double f(double x, double A){
  return 1/(1-pow(sin(A/2),2)*pow(sin(x),2));
}

double trapezoid(double a, double b, int n, double A){
  double h=(b-a)/n;
  double sum=0.5*(f(a,A)+f(b,A));
  for(int i=1;i<n;i++){
    sum+=f(a+i*h,A);
  }
  return sum*h;

  
}

double simpson(double a, double b, int n, double A){
  if(n%2!=0) n++;
  double h=(b-a)/n;
  double sum=f(a,A)+f(b,A);
  for(int i=1;i<n;i++){
    double x=a+i*h;
    sum+=f(x,A)*(i%2==0?2:4);
  }
  return sum*h/3.0;
}

double  T1(double A){
  return 2*M_PI*(1+pow((A/4),2));
}

int main(){
  FILE *fp=NULL;
  fp=fopen("ch6q2.dat","w");
  
  double a=0.0,b=M_PI/2,diff,intg;
  int n=100;
  
  for(double A=0.0;A<3.14;A+=0.01){
    intg=4*trapezoid(a,b,n,A);
    diff=fabs(T1(A)-intg);
    fprintf(fp,"\t %lf \t %lf \t %lf \t %lf \n",A,intg,T1(A),diff);
  }
  fclose(fp);
}
