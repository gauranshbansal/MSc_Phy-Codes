/* GAuransh BAnsal F6 Q1 C BOX */
#include <stdio.h>
#include <math.h>

int main(){
  FILE *fp = NULL;
  fp=fopen("box.txt","w");
  fprintf(fp,"1 \t 1 \n");
  fprintf(fp,"5 \t 1 \n");
  fprintf(fp,"5 \t 5 \n");
  fprintf(fp,"1 \t 5 \n");
  fprintf(fp,"1 \t 1 \n");
  fclose;
  printf("\n \n \n Datafile for box created succesfully as box.txt! \n \n \n");
  return 0;
}
  
