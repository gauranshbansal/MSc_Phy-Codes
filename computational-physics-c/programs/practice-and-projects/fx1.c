#include <stdio.h>
#include <math.h>

double f(double x){
  double xr=fmod(x,2*M_PI);
  if (xr>M_PI){
    xr-=2*M_PI;
  }
  if(xr<-M_PI){
    xr+=2*M_PI;
  }
  
  if (xr>=-M_PI && xr<0){
    return 2*xr+fabs(xr);
  }
  else if (xr>0 && xr<=M_PI){
    return xr;
  }
  else {
    return 0;
  }
}

int main(){
  FILE *fp=NULL;
  fp=fopen("fx1.dat","w");
  for(double x=-12*M_PI;x<=12*M_PI;x+=0.1){
    fprintf(fp,"%lf \t %lf \n",x,f(x));
  }
  fclose(fp);
}
