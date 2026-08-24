#include <stdio.h>
#include <math.h>

double fx(double x, double y, double z){
  return -10*(x-y);
}

double fy(double x, double y, double z){
  double alpha = 5.0;
  return (alpha*x)-(x*z)-y;
}

double fz(double x, double y, double z){
  return x*y-(8.0/3.0)*z;
}

int main(){
  FILE *fp=NULL;
  fp=fopen("ch5q5.dat","w");
  double x=1.0,y=1.0,z=1.0,tf=15.0,t=0.0,h=0.01;
  int steps=(int)((tf-t)/h);
  double k1x,k2x,k3x,k4x,k1y,k2y,k3y,k4y,k1z,k2z,k3z,k4z;
  for(int i=0;i<steps;i++){
    k1x=h*fx(x,y,z);
    k1y=h*fy(x,y,y);
    k1z=h*fz(x,y,z);
    
    k2x=h*fx(x+k1x/2,y+k1y/2,z+k1z/2);
    k2y=h*fy(x+k1x/2,y+k1y/2,z+k1z/2);
    k2z=h*fz(x+k1x/2,y+k1y/2,z+k1z/2);
    
    k3x=h*fx(x+k2x/2,y+k2y/2,z+k2z/2);
    k3y=h*fy(x+k3x/2,y+k3y/2,z+k3z/2);
    k3z=h*fz(x+k3x/2,y+k3y/2,z+k3z/2);

    k4x=h*fx(x+k3x,y+k3y,z+k3z);
    k4y=h*fy(x+k3x,y+k3y,z+k3z);
    k4z=h*fz(x+k3x,y+k3y,z+k3z);

    t+=h;
    x+=(k1x+2*k2x+2*k3x+k4x)/6.0;
    y+=(k1y+2*k2y+2*k3y+k4y)/6.0;
    z+=(k1z+2*k2z+2*k3z+k4z)/6.0;
    printf("%f \t %.8f \t %.8f \t %.8f\n",t,x,y,z);
    fprintf(fp,"%f \t %.8f \t %.8f \t %.8f\n",t,x,y,z);
  }
  printf("\n\n File saved succesfully as ch5q5.dat \n \n");
  fclose(fp);
  return 0;
}
