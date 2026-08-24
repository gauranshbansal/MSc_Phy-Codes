#include <stdio.h>
#include <math.h>
double fact(float x){
  double p=1;
  for(int i=1; i<=x;i++){
    p*=i;
  }
  return p;
}
double bessel(float n, float x){
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
  FILE *fp=NULL;
  fp=fopen("ch3q3a.dat","w");
  int n=0;
  for(float x=0.01;x<=10;x+=0.01){
    double sum=bessel(n,x);
    printf("%6.4lf \t %6.4lf \n",x,sum);
    fprintf(fp,"%6.4lf \t %6.4lf \n",x,sum);
  }
  fclose(fp);

  FILE *fp2=NULL;
  fp2=fopen("ch3q3b.dat","w");
  n+=1;
  for(float x=0.01;x<=10;x+=0.01){
    double sum=bessel(n,x);
    printf("%lf \t %lf \n",x,sum);
    fprintf(fp2,"%6.4lf \t %6.4lf \n",x,sum);
  }
  fclose(fp2);
    
FILE *fp3=NULL;
  fp3=fopen("ch3q3c.dat","w");
  n+=1;
  for(float x=0.01;x<=10;x+=0.01){
    double sum=bessel(n,x);
    printf("%lf \t %lf \n",x,sum);
    fprintf(fp3,"%6.4lf \t %6.4lf \n",x,sum);
  }
  fclose(fp3);

  
  printf("\n \n \n File created succesfully as ch3q3.dat with a b and c added respectively\n \n \n");
}
