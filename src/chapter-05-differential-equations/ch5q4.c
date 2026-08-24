#include <stdio.h>
#include <math.h>

double f4(double x){
  double sum = 0.0;
  double term = 1.0;
  sum+=term;
  for(int i=1;i<=10;i++){
    term*=(-1.0)*x*x/((2*i+1)*(2*i));
    sum+=term;
  }
  return sum;
}

double dy_dx(double x, double y, double z){
  return z;
}

double dz_dx(double x, double y, double z){
  return f4(x)-z-(4*x*y);
}

int main(){
  FILE *fp=NULL;
  fp=fopen("ch5q4.dat","w");
  double x=0.0,y=0.0,z=1.0,xf=1.0,h=0.0001;
  int steps=(int)((xf-x)/h);
  double k1y,k2y,k3y,k4y,k1z,k2z,k3z,k4z;
  for(int i=0;i<steps;i++){
    k1y=h*dy_dx(x,y,y);
    k1z=h*dz_dx(x,y,z);
    k2y=h*dy_dx(x+h/2,y+k1y/2,z+k1z/2);
    k2z=h*dz_dx(x+h/2,y+k1y/2,z+k1z/2);
    k3y=h*dy_dx(x+h/2,y+k2y/2,z+k2z/2);
    k3z=h*dz_dx(x+h/2,y+k2y/2,z+k2z/2);
    k4y=h*dy_dx(x+h,y+k3y,z+k3z);
    k4z=h*dz_dx(x+h,y+k3y,z+k3z);
    x+=h;
    y+=(k1y+2*k2y+2*k3y+k4y)/6.0;
    z+=(k1z+2*k2z+2*k3z+k4z)/6.0;
    printf("%.8f \t %.8f\n",x,y);
    fprintf(fp,"%.8f \t %.8f\n",x,y);
  }
  printf("\n\n File saved succesfully as ch5q4.dat");
  fclose(fp);
  return 0;
}
