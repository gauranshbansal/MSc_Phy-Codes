#include <stdio.h>
#include <math.h>

double f(double x){
  return atan(x)/pow(x,2);
}

double trapezoid(double a, double b, int n){
  double h=(b-a)/n;
  double sum=0.5*(f(a)+f(b));
  for(int i=1;i<n;i++){
    sum+=f(a+i*h);
  }
  return sum*h;

  
}

double simpson(double a, double b, int n){
  if(n%2!=0) n++;
  double h=(b-a)/n;
  double sum=f(a)+f(b);
  for(int i=1;i<n;i++){
    double x=a+i*h;
    sum+=f(x)*(i%2==0?2:4);
  }
  return sum*h/3.0;
}


int main(){
  double a=5.0,b=10.0,eps=1e-5;
  double prev, curr;
  int n=2;
  curr=trapezoid(a,b,n);
  do{
    prev=curr;
    n*=2;
    curr=trapezoid(a,b,n);
  } while(fabs(curr-prev)>eps);
  printf("\n\n\n\nTrapezoidal result = %f (n=%d) \n",curr,n);


  // Simpson
  n=2;
  curr=simpson(a,b,n);
  do{
    prev=curr;
    n*=2;
    curr=simpson(a,b,n);
  }
  while(fabs(curr-prev)>eps);
  printf("Simpson Result = %.6f (n=%d) \n\n\n\n",curr,n);
  return 0;

}
