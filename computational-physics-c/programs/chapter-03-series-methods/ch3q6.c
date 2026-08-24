#include <stdio.h>
#include <math.h>
#define C 0.35503
#define ZMAX 0
#define STEPS 20
#define TERMS 10

float f(float z){
  float s=1.0;
  float t=1.0;
  int k;
  int j;
  for(k=0;k<=TERMS;k++){
    t*=pow(z,3)/((3*k+3)*(3*k+2));
    s+=t;
  }
  return C*s;
}
int main(){
  double z=-10, dz=0.5;
  for(int i=0;i<21;i++){
    printf("% lf \t %lf \n",z,f(z));
     z+=dz;
  }
  FILE *fp=NULL;
  fp=fopen("ch3q6.txt","w");
  z=-10;
  for(int i=0;i<21;i++){
    fprintf(fp,"% lf \t %lf \n",z,f(z));
     z+=dz;
  }
  printf("\n \n \n file saved succesfully as ch3q6.txt \n \n \n");
  fclose(fp);
  
  return 0;
}
  
