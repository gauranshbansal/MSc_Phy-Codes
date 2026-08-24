#include <stdio.h>
#include <math.h>

int main(){
  printf("The Program to find Harshad Numbers: \n");
  for(int x=0; x<9;x++){
    for (int y=0; y<9; y++){
      if (x==0 && y==0){
	continue;
      }
      int z=(10*x)+y;
      int z2=x+y;
      if(z<50 || z>70){
	continue;
      }
      if((z)%(z2)==0){
	printf("%d \n",z);
      }
      else {
	continue;
      }
    }
  }
  int num, back;
  printf("Implementing a checker! \n");
  printf("Enter the value: ");
  scanf("%d",&num);
  back=num;
  int digit=num%10;
  num=num/10;
  int digit2=num%10;
  int sum = digit+digit2;
  int result = back%sum;
  if (result==0){
    printf("Yes valid since the sum is: %d which divides %d \n \n",sum,back);
  }
  return 0;
}
      
