/* CHAPTER 3 Q2 SERIES FOR COS GAURANSH*/
#include <stdio.h>
#include <math.h>
#define PI 3.14159
float fact(int x){
  float p=1;
  for (int i=1;i<=x;i++){
    p*=i;
  }
  return p;
}

double series(float x){
  double t=pow(x,2);
  double sum=1-(t/2);;
  double t2;
  int polarity=1;
  for (int i=4;i<200;i+=2){
    t*=pow(x,2);
    t2=t/fact(i);
    sum+=polarity*t2;
    polarity*=-1;
  }
  return sum;
}

int main(){
  double x1=PI/3;
  double sum=series(x1);
  printf("\n \n Check: \n The value of cos(%lf) is: %lf \n \n",x1,sum);
  FILE *fp=NULL;
  fp=fopen("ch3q2.txt","w");
  for(float x=0;x<=2*PI;x+=0.1){
    double y=series(x);
    fprintf(fp,"%lf \t %lf \n",x,y);
  }
  printf("File for cos(x) created succesfully as ch3q2.txt \n \n \n");
  fclose(fp);
  return 0;
}
