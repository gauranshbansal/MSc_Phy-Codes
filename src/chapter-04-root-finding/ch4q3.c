#include <stdio.h>                                                     
#include <math.h>                 
                                      
double f(double x, double y){                 
  return pow(x,3)+pow(y,3)+(x*y)+1;                   
}                                          
 
int main(){               
  FILE *fp1 =NULL;           
  fp1=fopen("ch4q3again.dat","w"); 
  double y0=-2.0, y1=2.0, yl, yr, ym, acc=0.001, z, yinc=0.01;
  for(double x=-1.5;x<=1.5;x+=0.01){                            
  for(double y=y0;y<=y1;y+=yinc){ 
	if(f(x,y)*f(x,y+yinc)<0){ 
	yl=y;yr=y+yinc;              
	do{                                                                  
	  ym=(yl+yr)/2.0;
	  if (f(x,ym)==0){
	    break;}
	  if(f(x,ym)*f(x,yl)>0){
	    yl=ym;}              
	  else if(f(x,ym)*f(x,yl)<0){
	     yr=ym;}              
	  z=fabs((yl-yr)/(yl+yr));
	}                                        
	while(z>acc);
	fprintf(fp1,"%lf \t %lf \n",x,ym);
	}                                 
  }         
  }
  fclose(fp1);
}             


