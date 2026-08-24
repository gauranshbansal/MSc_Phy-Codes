#include <stdio.h>
#include <math.h>


float f(float x,float y){
  return x+y;
}
  

float euler(float xf){
  float h=0.0001, x=0.0, y=1.0;
  int i,n;
  do
    {
      y=y+h*(x+y);
      x+=h;
    }
  while(x<=xf);
  return y;
}
  

int main(){
  FILE *fp=NULL;
  fp=fopen("res1.dat","w");
  FILE *fp2=NULL;
  fp2=fopen("res2.dat","w");
  /* Euler's Method */
  for(float i=1.0;i<=5.0;i+=0.1){
    printf("%f \t %f \n",i,euler(i));
    fprintf(fp,"%f \t %f \n",i,euler(i));
  }
  float xi=0.0,xf=5.0,h=0.0001,k1,k2,k3,k4,n,x,y;
  /*Range Kutta*/
  n=(xf-xi)/h;
  x=xi;
  y=1.0;
  for(int i=1;i<=n;i++){
    k1=h*f(x,y);
    k2=h*f(x+h/2.0,y+k1/2.0);
    k3=h*f(x+h/2.0,y+k2/2.0);
    k4=h*f(x+h,y+k3);
    y+=(k1+2*k2+2*k3+k4)/6.0;
    x+=h;
    printf("%f \t %f \n",x,y);
    fprintf(fp2,"%f \t %f \n",x,y);
  }
  fclose(fp);
  fclose(fp2);
}
