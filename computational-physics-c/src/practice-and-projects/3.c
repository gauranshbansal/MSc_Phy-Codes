#include <stdio.h>
#include <math.h>

double func(double x){
  int k=0;
  double t, t1=1.0, s=1.0;
  do{
    t=1.0/((3*k+3)*(3*k+2)*(3*k+1));
    t1*=t;
    s+=t1;
    k+=1;
  }while(fabs(t1/s)>1e-5);
  double sum=s;
  return pow(x,2)+2*cos(sqrt(3)*x/2.0)-sum;
}

int main(){
  //bisection
  double x, xinc=0.1,xr,xm,xl;
   for(double x=-5.0;x<5.0;x+=xinc){
    printf("%lf \t %lf \n",x,func(x));
   }
  for(x=-5.0;x<5.0;x+=xinc){
    if(func(x)*func(x+xinc)<0){
      xl=x; xr=x+xinc;
      do{
	xm=(xl+xr)/2.0;
	if(func(xl)*func(xm)<0){
	  xr=xm;
	}
	else{
	  xl=xm;
	}
      }while(fabs(func(xm))>1e-5);
      printf("There is a root at: %lf",xm);
    }
  }
}
	     
      
  
  
   
  
