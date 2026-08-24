#include <stdio.h>
#include <math.h>

float f(float x, float a, float b){
  return exp(a*x)-b*x*x;
    }
float g(float x, float a, float b){
  return ((a*exp(a*x))-(2*b*x));
}

int main(){
  float a=1.0,b=5.0;
      printf("\n \n \n  -------------------THE TABLE----------------- \n \n \n");
      printf("\n \t  x \t \t f(x) \n");
      printf("\t------------------------------ \n");
  for(float x=-1.0;x<=1.0;x+=0.1){
    printf("\t  %f \t %f \n",x,f(x,a,b));
  }
  /*begin bisection*/
  float x,xm, xl,xr, acc=0.00001, xinc=0.5,z,x1,x2;
  printf(" \n \n  -------------BISECTION-------------- \n \n");
  x1=-1.0; x2=1.0;
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
	printf("\n \n \n ROOT=%f f(xm)=%f z=%f acc=%f \n \n \n",xm,f(xm,a,b),z,acc);
    }
  }
  /*begin secant method*/
  printf(" \n \n  -------------SECANT-------------- \n \n");
  float s1, s2, s3, f1, f2, t;

  for (int i=1;i<=2;i++){
    printf("\n Input x1, x2:");
    scanf("%f, %f",&s1,&s2);
    do{
      f2=f(s2,a,b); f1=f(s1,a,b);
  s3=(f2*s1-s2*f1)/(f2-f1);
  s1=s2;
  s2=s3;
  t=fabs(f2);
    }while(t>acc);
  printf("\n ROOT=%6.4f f(x2)=%f acc=%f \n \n",s2,f2,acc);
  }
   /*begin newton raphson method*/
  float h, fn1, fn2;
    printf(" \n \n  -------------NEWTON RAPHSON-------------- \n \n");
    do{
      fn1=f(x,a,b);
      fn2=g(x,a,b);
      h=-fn1/fn2;
      x=x+h;
    }
    while(fabs(h/x)>acc);
    printf("The ROOT IS %f AT WHICH THE FUNCTION IS \t %f \n",x,fn1);
  return 0;
}
