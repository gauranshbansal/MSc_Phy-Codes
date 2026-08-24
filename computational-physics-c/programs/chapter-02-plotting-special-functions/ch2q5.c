#include <stdio.h>
#include <math.h>

#define N 5

float jk0(float z){
  return sin(z)/z;
}

float jk1(float z){
  return (sin(z)/(z*z))-(cos(z)/z);
}

int main(){
  FILE *fp=NULL;
  fp=fopen("bessel.txt","w");
  float j[N+1];
  for(float z=0.01;z<=5.0;z+=0.01){
    for(int n=2;n<=N;n++){
      j[0]=jk0(z);
      j[1]=jk1(z);
      j[n]=((2*(n-1))+1)*((j[n-1])/(z))-j[n-2];
    }
    fprintf(fp,"%f \t %f \t %f \t %f \t %f \t %f \t %f \n",z,j[0],j[1],j[2],j[3],j[4],j[5]);
  }
  fclose(fp);
  return 0;
}
      
