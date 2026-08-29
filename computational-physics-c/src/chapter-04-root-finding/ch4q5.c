#include <stdio.h>
#include <math.h>

double U4(double x){
  return (12*pow(x,4))-12*(pow(x,2))+1;
}
double bisect(double a, double b){
  double fa=U4(a);
  double fb=U4(b);
  for(int i=0;i<100;i++){
    double m=(a+b)/2, fm=U4(m);
    if(fabs(fm)<1e-6 || fabs(b-a)<1e-6) return m;
    if (fa*fm<0){b=m;fb=fm;}
    else{a=m;fa=fm;}
  }
  return (a+b)/2;
} 

int main(){
  for(double a=-1;a<1;a+=0.2){
    double b=a+0.2;
    if (U4(a)*U4(b)<0){
      printf("Root =%.6f \n",bisect(a,b));
    }
  }
  return 0;
}
