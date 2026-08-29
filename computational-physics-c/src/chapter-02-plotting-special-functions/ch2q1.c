/*Gauransh Bansal F6*/
/* Chapter Question 1 PART A*/
#include <stdio.h>
#include <math.h>

int main(){
  FILE *fp=NULL;
  fp=fopen("tridata.txt","w");
  fprintf(fp,"x \t y \n");
  fprintf(fp,"0 \t 0 \n");
  fprintf(fp,"4 \t 0 \n");
  fprintf(fp,"4 \t 3 \n");
  fprintf(fp,"0 \t 0 \n");
  fclose(fp);
  printf("\n \n \n File saved as tridata.txt successfully. \n\n");
}
