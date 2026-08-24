/* Gauransh BANSAL */
/* q8 OF cH1, ROOTS*/
#include <stdio.h>
#include <math.h>


float De(float a, float b, float c){
  return pow(b,2)-4*a*c;
}

int main(){
  float a,b,c;
  printf("\n \n \n \t WELCOME TO QUADRATIC SOLVER: \n");
  printf("\n \t Enter a,b,c seperated by commas: \n");
  scanf("%f,%f,%f",&a,&b,&c);
  float det=De(a,b,c);
  if(det==0.0 || det>0){
    printf("The roots are real.");
    float root1=(-pow(b,2)+sqrt(det))/(2*a);
    float root2=(-pow(b,2)-sqrt(det))/(2*a);
    printf("The roots are %6.2lf and %6.2lf. \n \n \n",root1,root2);

  }
  else {
    printf("The Roots aren't real. Error \n \n \n");
  }
  return 0;
}
 
