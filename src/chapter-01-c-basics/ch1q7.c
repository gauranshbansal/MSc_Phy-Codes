/* Gauransh Bansal F6 */
/* Q7 To calculate the permuation and combination */

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
  int reply;
  int n,r,num;
  float comb, perm;
  printf("Welcome to the Permutation and Combination calculator \n");
  printf("Enter 1 for Combination and 2 for permutation: \n");
  scanf("%ld",&reply);
  if(reply==1){
    printf("Enter the n and r values (Seperated By Space): \n");
    scanf("%ld %ld",&num,&r);
    printf("You entered %ld and %ld. \n",num,r);
    comb=fact(num)/(fact(num-r)*fact(r));
    printf("The resulting combination is:%6.2lf \n \n",comb);
  }
  else if(reply==2){
    printf("Enter the n and r values seperated by space: \n");
    scanf("%ld %ld",&num,&r);
    printf("You entered %ld and %ld. \n",num,r);
    perm=fact(num)/fact(num-r);
    printf("The resulting permutation is:%6.2lf \n \n",perm);
  }
  else{
    printf("Error, enter 1 or 2 only");
  }
  return 0;
}
