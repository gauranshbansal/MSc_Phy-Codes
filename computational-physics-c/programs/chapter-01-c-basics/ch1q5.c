#include <stdio.h>
#include <math.h>

/*Chapter 1 Question 5 - Gauransh Bansal */

long int fibonacci(long int x){
  long int a=1; long int b=1;
  printf("1 \n");
  for (long int i=1;i<=x;i++){
    if(b>x){
      break;
    }
    b+=a;
    a=b;
    printf("%ld \n",b);
  }
  return b;
}
    
int main(){
  long int x;
  printf("Enter the number: \n");
  scanf("%ld",&x);
  long int value=fibonacci(x);
  printf("Final: %ld \n",value);
  return 0;
}
