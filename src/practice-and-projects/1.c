#include <stdio.h>
#include <math.h>

double integral(double x){
  return pow(x,2)-cos(x)+3*x+fabs(x-3);
}

double simpson(double x){
  double sum=0.0, a=0.0, b=x, param;
  sum=integral(a)+(integral(b));
  int n=100;
  double h=(b-a)/n;
  for(int i=1;i<n;i++){
    param=a+i*h;
    if(i%2==0){
      sum+=2*integral(param);
    }
    else{
      sum+=4*integral(param);
    }
  }
  double ans=(h/3.0)*(sum);
  return ans;
}
    
int main(){
  FILE *fp=NULL;
  fp=fopen("1.dat","w");
  for(double x=0.0;x<=2.0;x+=0.1){
    printf("%lf \t %lf \n",x,simpson(x));
    fprintf(fp,"%lf \t %lf \n",x,simpson(x));
  }
  fclose(fp);
}
  
