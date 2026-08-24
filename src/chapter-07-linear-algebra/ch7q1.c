#include <stdlib.h>
#include <math.h>
#include <stdio.h>

float **matalloc(int m, int n){
  float **mat=malloc(m*sizeof(float *));
  for(int i=0;i<m;i++){
    mat[i]=malloc(n*sizeof(float));
  }
  return mat;
}
void matadd(float **a, float **b, float **c, int m, int n){
  int i,j;
  for (i=0;i<m;i++){
    for(j=0;j<n;j++){
      c[i][j]=a[i][j]+b[i][j];
      printf("%f \t",c[i][j]);
    }
    printf("\n");
  }
  printf("\n");
}

void matsub(float **a, float **b, float **c, int m, int n){
  int i,j;
  for (i=0;i<m;i++){
    for(j=0;j<n;j++){
      c[i][j]=a[i][j]-b[i][j];
      printf("%f \t",c[i][j]);
    }
    printf("%f \t",c[i][j]);
  }
  printf("\n");
}

void matmul(float **a, float **b, float **c, int m, int n, int p){
  int i,j;
  for (int i=0;i<m;i++){
    for(j=0;j<n;j++){
      c[i][j]=0.0;
      c[i][j]=a[i][j]-b[i][j];
      printf("%f \t",c[i][j]);
    }
    printf("%f \t",c[i][j]);
  }
  printf("\n");
}


int main(){
  int m=3, n=3;
  float **a=matalloc(m,n);
  float **b=matalloc(m,n);
  float **c=matalloc(m,n);

  //i am quickly making a matrix
  for(int i=0;i<m;i++){
    for(int j=0;j<n;j++){
      a[i][j]=i+j;
      b[i][j]=(i+1)*(j+1);
    }
  }
  printf("Matrix A+B= \n");
  matadd(a,b,c,m,n);
  
  //Cleanup
  for(int i=0;i<m;i++){
    free(a[i]);
    free(b[i]);
    free(c[i]);
  }
  free(a);free(b);free(c);
  return 0;
}
