#include <stdio.h>
#include <math.h>
#define PI 3.14159
#define TERMS 50
#define ZMAX 5
#define STEPS 20


double f(double z){
  int k;
  double t;
  t=(4.0*pow(z,2.0)*(1.0-k))/((k+2.0)*(k+1.0)*2.0);
  float  term;
  term=1/(2*sqrt(PI));
  double sum=term;
    for(k=0;k<=TERMS;k+=2){
      term*=t;
      sum+=term;
    }
    return sum;
}

int main(){
  printf("\n \n \n %lf \n \n \n",f(2));
  double z;
  double dz=0.25;
  printf("z \t f(z) \n");
  for(int i=0;i<=STEPS;i++){
    z=i*dz;
    printf("%lf \t %lf \n",z,f(z));
  }

   FILE *fp=NULL;
  fp=fopen("ch3q5.txt","w");
  for(int i=0;i<=STEPS;i++){
    z=i*dz;
    fprintf(fp,"%lf \t %lf \n",z,f(z));
  }
  fclose(fp);
  printf("\n \n \n file saved succesfully as ch3q5.txt \n \n \n");
  return 0;
}
  
  
