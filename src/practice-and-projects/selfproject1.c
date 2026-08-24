#include <stdio.h>
#include <math.h>
#define PI 3.13159
double projectile(double x, double theta, double u){
  double g=9.8;
  return x*tan(theta)-((g*x*x)/(2*pow(u,2)*pow(cos(theta),2)));
}

int main(){
  FILE *fp =NULL;
  fp=fopen("selfproject1.dat","w");
  double  u=50, count=0;
  printf("\n \n \n \n Welcome to the projectile plotter! \n \n \n");
  for(double theta=0.001; theta<=PI/2;theta+=PI/12){
     /*printf("\n \n For theta = %lf \n \n",theta);*/
     count+=1;
       for (double x=0.1; x<500;x+=1){
	 if (projectile(x,theta,u)<0) continue;
	 fprintf(fp,"\t %.4lf \t % .4lf \n",x,projectile(x,theta,u));
    }
  }
  fclose(fp);
  printf("\n\n\n Count= %f \n \n",count);
  return 0;
}
  
