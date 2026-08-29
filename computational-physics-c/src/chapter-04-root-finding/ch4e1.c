#include <stdio.h>
#include <math.h>

float f(float x, float a, float b){
  return exp(a*x)-b*x*x;
    }

int main(){
  float a=1.0,b=5.0;
  for(float x=-1.0;x<=1.0;x+=0.1){
    printf("%f \t %f \n",x,f(x,a,b));
  }
  /*begin bisection*/
  float x,xm, xl,xr, acc=0.0000001, xinc=0.5,z,x1,x2;
  x1=-1.0; x2=1.0;
  for(int i=1;i<2;i++){
      for(x=x1;x<=x2;x+=xinc){
      if(f(x,a,b)*f(x+xinc,a,b)<0){
	xl=x;xr=x+xinc;
	do{
	  xm=(xl+xr)/2.0;
	  if(f(xm,a,b)*f(xl,a,b)>0){
	    xl=xm;}
	  if(f(xm,a,b)*f(xl,a,b)<0){
	     xr=xm;}
	  z=fabs((xl-xr)/(xl+xr));
	  printf("xm=%f f(xm)=%f z=%f acc=%f\n",xm,f(xm,a,b),z,acc);
	}
	while(z>acc);
	printf("\n \n \n root=%f f(xm)=%f z=%f acc=%f \n \n \n",xm,f(xm,a,b),z,acc);
      }
    }
  }
  return 0;
}
