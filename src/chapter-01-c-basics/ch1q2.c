#include <stdio.h>
#include <math.h>

float func(float x, float y){
  if(x>y){
    return pow(x,2)+pow(y,4);
  }
  else if (x==y){
    return pow(x,2)*(pow(x,2)+1);
  }
  else{
    return pow(y,2)+pow(x,4);
  }
}

int main(){
  printf("\n \n \t x \t \t   y \t \t f(x,y) \n");
  printf("-------------------------------------------------------- \n");
  for (float x=-1.0;x<1.0;x+=0.25){
    for(float y=-1.0;y<1.0;y+=0.25){
      printf("\t %f \t %f  \t %f \n",x,y,func(x,y));
    }
  }
}
