#include <stdio.h>
#include <math.h>

double f(double theta){
  return -sin(theta);
}

double g(double w){
  return w;
}  

int main(){
  FILE *fp=NULL;
  fp=fopen("ch5q2.txt","w");
  double alpha=0.1,theta=alpha,w=0.0,t=0,tf=8*M_PI,h=0.001,k1,k2,k3,k4,l1,l2,l3,l4;
  int steps=(int)((tf-t)/h);
  for(int i=0;i<steps;i++){
    k1=h*f(theta);
    l1=h*g(w);
    k2=h*f(theta+l1/2);
    l2=h*g(w+k1/2);
    k3=h*f(theta+l2/2);
    l3=h*g(w+k2/2);
    k4=h*f(theta+l3);
    l4=h*g(w+k3);
    t+=h;
    theta+=(l1+2*l2+2*l3+l4)/6.0;
    w+=(k1+2*k2+2*k3+k4)/6.0;
    double theta_analytic=alpha*cos(t);
    if(i%1000==0){
      printf("%lf \t %lf \t %lf \n",t,theta,theta_analytic);
      fprintf(fp,"%lf \t %lf \t %lf \n",t,theta,theta_analytic);
    }
  }
    printf(" \n File created succesfully! \n");
    fclose(fp);
}
