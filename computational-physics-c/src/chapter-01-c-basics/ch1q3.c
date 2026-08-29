#include <stdio.h>
#include <math.h>

int main(){
  
  for (int i=1; i<100; i++){
    for (int j=1;j<100;j++){
      for (int k=1;k<100;k++){
	if(i<j && j<k){
	  continue;
	}
	if(pow(i,2)+pow(j,2) == pow(k,2)){
	  printf("%d %d %d\n",j,i,k);
	}
	else{
	    continue;
	  }
	}
      }
    }
  int n1,n2,n3,x1,x2;
  printf("Here is a quick checker, enter any 3 integers seperated by space: ");
  scanf("%d %d %d",&n1,&n2,&n3);
  x1=pow(n1,2)+pow(n2,2);
  x2=pow(n3,2);
  printf("%d^2 %d^2 = %d \n",n1,n2,x1);
  printf("And the square of %d is: %d \n",n3,x2);
  if (x1==x2){
    printf("Yes, they are Pythagorean numbers. \n");
  }
  else{
    printf("No, they are not Pyhtagorean numbers. \n");
  }
  return 0;
}
