/*Gauransh Bansal
Department of Physics and Astrophysics, Delhi University
24222762058
March 8
3:15 PM */
#include <stdio.h>
#include <math.h>



double fact(int n){
  int p=1;
  for (int i=1;i<=n;i++){
    p*=i;}
  return p;
  }

double cosfind(double x){
  double s=1,t=1,t1;
  for (int i=0;i<10;i++){
    t*=-pow(x,2)/((2*i+1)*(2*i+2));
    s+=t;}
  return s;
}

int main(){
  FILE *fp=NULL;
  fp=fopen("data2.dat","w");
  for (double x=0.0;x<M_PI;x+=0.01){
    fprintf(fp,"%lf \t %lf \n",x,cosfind(x));
    printf("%lf \t %lf \n",x,cosfind(x));
  }
  fclose(fp);
  /*Using bisection*/
  double xinc=0.1,xm, xl, xr, acc=0.0001;
  for(double x=0.0;x<2*M_PI;x+=xinc){
    if(cosfind(x)*cosfind(x+xinc)<0){
      xl=x;xr=xinc;
      do{
      xm=(xl+xr)/2.0;
      if (cosfind(xm)==0){
	  break;}
      else if(cosfind(xl)*cosfind(xm)>0){
	xl=xm;}
      else if(cosfind(xl)*cosfind(xm)<0){
	xr=xm;}
      } while (fabs(xl-xr)/(xl+xr)>acc);
      printf("There is a root at %f . \n",xm);
    }
  }
  /* Secant method */
  
  
}
