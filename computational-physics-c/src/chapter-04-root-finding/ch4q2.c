#include <stdio.h>
#include <math.h>
double fact(float x){
  double p=1;
  for(int i=1; i<=x;i++){
    p*=i;
  }
  return p;
}
double f(float x){
  float n=0;
  double mul=pow((x/2),n);
  double s= 1/(fact(n));
  double t1=s;
 for(int i=0;i<100;i++){
  double t=-(pow(x,2)/(4*(i+1)*(n+i+1)));
  t1*=t;
  s+=t1;
 }
 return mul*s;
}

int main(){
      printf("\n \n \n  -------------------THE TABLE----------------- \n \n \n");
      printf("\n \t  x \t \t f(x) \n");
      printf("\t------------------------------ \n");
  for(float x=0.1;x<=9;x+=0.1){
    printf("\t  %f \t %f \n",x,f(x));
  }
  /*begin bisection*/
  float x,xm, xl,xr, acc=0.0001, xinc=0.5,z,x1,x2;
  printf(" \n \n  -------------BISECTION-------------- \n \n");
  printf("Enter x1 and x2: ");
  scanf("%f, %f",&x1,&x2);
      for(x=x1;x<=x2;x+=xinc){
      if(f(x)*f(x+xinc)<0){
	printf("Works till here");
	xl=x;xr=x+xinc;
	do{
	  xm=(xl+xr)/2.0;
	  if(f(xm)*f(xl)>0){
	    xl=xm;}
	  if(f(xm)*f(xl)<0){
	     xr=xm;}
	  z=fabs((xl-xr)/(xl+xr));
	  printf("xm=%f f(xm)=%f z=%f acc=%f\n",xm,f(xm),z,acc);
	}
	while(z>acc);
	printf("\n \n \n ROOT=%6.4f f(xm)=%6.4f z=%6.4f acc=%6.4f \n \n \n",xm,f(xm),z,acc);
      }
      }
}
  
