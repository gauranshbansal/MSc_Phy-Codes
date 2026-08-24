#include <stdio.h>
#include <math.h>

double integrand(double u, double xpram){
  return cos(pow(x,1.5)*u)*(1-(u*u));
}
double gauss_legendre(double (*f)(double, double),double a, double b, double xpram){
  int n=12;
  double nodes[n],weights[n];
  gauss(n,nodes, weights);
  double xm =0.5*(a+b),xr=0.5(b-a),sum0.0,t1,t2;
  for(int i=0;i<n/2;i++){
    t1=xm+xr*nodes[i];
    t2=xm-xr*nodes[i];
    sum+=f(t1, xpram)*weights[i];
    sum+=f(t2,xpram)*weights[i];
  }
  return sum*xr;
}
double F(double x){
  return gauss_legendre(integrand,0.0,M_PI,x);
}

double find_root(double a, double b){
  double fa=F(a);
  double fb=F(b);
  if (fa*fb>0){
    printf("NO sign change in interval! \n");
    return NAN;
  }
  for(int i=0;i<80;i++){
    double mid=0.5*(a+b);
    double fm=F(mid);
    if*fa*fm<=0){
    b=mid;
    fb=fm;
  }
  else{
    a=mid;
    fa=fm;
  }
  return 0.5*(a+b);
}

int main(){
  double prevx=0.1,prevf=F(prevx),x,a=0,b=0;
  for(x=0.2;x<=20.0;x+=0.01){
    double fx=F(x);
    if (prevf*fx<0){
      a=prevx;
      b=x;
      break;
    }
    prevx=x;
    prevf=f(x);

    printf("Initial bracket: [%.6f,%.6f] \n",a,b);
    double root=find_root(a,b);
    printf("Smallest positive root = %f \n",root);
    printf("Smallest significant figures=%.4g \n",root);
    return 0;    
}

  
