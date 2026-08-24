#include <stdio.h>
#include <math.h>
#define PI 3.14159

float theta30(float thet){
  float thet1=(3*sqrt(14)*((5/3)*pow(cos(thet),3)-cos(thet)))/4;
  return thet1;
}

float theta31(float thet){
  float thet1=(sqrt(42)*sin(thet)*(5*pow(cos(thet),2)-1))/8;
  return thet1;
}

float theta32(float thet){
  float thet1=(sqrt(105)*pow(sin(thet),2)*cos(thet))/4;
  return thet1;
}
float theta33(float thet){
  float thet1=(sqrt(70)*pow(sin(thet),3))/8;
  return thet1;
}

int main(){
  FILE *fp1=NULL;
  fp1=fopen("1.txt","w");
  printf("For l=3 and m=0. \n \n");
  for(float thet=0.0;thet<2*PI;thet+=0.01){
    float val=theta30(thet);
    fprintf(fp1,"%6.3f \t %6.3f \n",thet,val);
  }
  fclose(fp1);
  printf("Data for theta 3,0 has been succesfully calculated as 1.txt \n\n\n");

  FILE *fp2=NULL;
  fp2=fopen("2.txt","w");
  printf("For l=3 and m=1. \n \n");
  for(float thet=0.0;thet<2*PI;thet+=0.01){
    float val=theta31(thet);
    fprintf(fp2,"%6.3f \t %6.3f \n",thet,val);
  }
  fclose(fp2);
  printf("Data for theta 3,1 has been succesfully calculated as 2.txt \n\n\n");

  FILE *fp3=NULL;
  fp3=fopen("3.txt","w");
  printf("For l=3 and m=2. \n \n");
  for(float thet=0.0;thet<2*PI;thet+=0.01){
    float val=theta32(thet);
    fprintf(fp3,"%6.3f \t %6.3f \n",thet,val);
  }
  fclose(fp3);
  printf("Data for theta 3,2 has been succesfully calculated as 1.txt \n\n\n");

  FILE *fp4=NULL;
  fp4=fopen("4.txt","w");
  printf("For l=3 and m=3. \n \n");
  for(float thet=0.0;thet<2*PI;thet+=0.01){
    float val=theta33(thet);
    fprintf(fp4,"%6.3f \t %6.3f \n",thet,val);
  }
  fclose(fp4);
  printf("Data for theta 3,3 has been succesfully calculated as 1.txt \n\n\n");
}
