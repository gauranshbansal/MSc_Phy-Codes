/* Gauransh Bansal F6 */
/*Program to find factiorial */

#include <stdio.h>
#include <math.h>

long int fact(long int x){
  long int factorial=x;
  for (long int i=1;i<x;i++){
    if ((x-i)==0 || (x-i)<0){
      break;
    }
    factorial*=x-i;
  }
  return factorial;
}
int main(){
  long int x;
  printf("Enter the value you need fatorial of: ");
  scanf("%ld",&x);
  long int ans=fact(x);
  printf("The result is: %ld",ans);
  return 0;
}
  
