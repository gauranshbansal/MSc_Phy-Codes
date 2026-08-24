#include <stdio.h>
#include <math.h>

int main(){
  FILE *fp=NULL;
  fp=fopen("pendulum.dat","w");
  double theta,sn; int n;
  for (theta=-M_PI;theta<=M_PI;theta+=M_PI/60){
  double s=theta,sn=theta;
  double t=-pow(theta,2)/((2*n+3)*(2*n+2));
  for (n=0;n<100;n++){
    sn*=t;
    s+=sn;
  }
  fprintf(fp,"%f \t %f \n",theta,s);
  }
  fclose(fp);
}
