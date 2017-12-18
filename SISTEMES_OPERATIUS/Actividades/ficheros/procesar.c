#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define GRANDARIA 500
#define GRAND_LINE 1000

typedef char object[50];

object matrix1[GRANDARIA];
object matrix2[GRANDARIA];
int matrix4[GRANDARIA][GRANDARIA];
int matrix5[GRANDARIA][GRANDARIA];
int matrix6[GRANDARIA][GRANDARIA];

int index_matrix1=0,index_matrix2=0;
int index_matrix4=0,index_matrix5=0,index_matrix6=0;

int INICIAL,FINAL;

void print_cabecera(char * s){

  printf("*********************************\n");
  printf("***********%s***************\n",s);
  printf("*********************************\n");

}

void print_matrixes(){

  int i,j;

  print_cabecera("DIAS");
  printf("\t");
  for(i=0;i<index_matrix1;i++)
    printf("%s\t",matrix1[i]);
  printf("\n");
  
  print_cabecera("SEMANAS");
  for(i=0;i<index_matrix2;i++)
    printf("%s\n",matrix2[i]);
  printf("\n");
  
  print_cabecera("EDIFICIO A");
  for(i=0;i<index_matrix2;i++){
    for(j=0;j<index_matrix1;j++)
      printf("%d\t",matrix4[i][j]);
    printf("\n");
  }
  printf("\n");

  print_cabecera("EDIFICIO D");
  for(i=0;i<index_matrix2;i++){
    for(j=0;j<index_matrix1;j++)
      printf("%d\t",matrix5[i][j]);
    printf("\n");
  }
  printf("\n");
   
  print_cabecera("TOTAL");
  for(i=0;i<index_matrix1;i++){
    for(j=0;j<index_matrix1;j++)
      printf("%d\t",matrix6[i][j]);
    printf("\n");
  }
  printf("\n"); 

}

void read_matrixes(FILE *f,FILE *f2){

  char line[GRAND_LINE];
  int i,j,k,s,r,act,val;
  char llegit[10];
  int primera_estructura=0;
  int MATRIU=-1;

  while(fgets(line,GRAND_LINE,f)!=NULL){     
     if(strncmp(line,"DIAS",4)==0){
       index_matrix1=0;              
       while(index_matrix1<5){
	 fscanf(f,"%s",llegit);
	 strcpy(matrix1[index_matrix1],llegit);
	 index_matrix1++;	 
       }
       fflush(stdout);       
       fgets(line,GRAND_LINE,f);
     }

     if(strncmp(line,"SEMANAS",7)==0){
       index_matrix2=0;
       while(strcmp(line,"\n")!=0){
	 fgets(line,GRAND_LINE,f);
	 strncpy(matrix2[index_matrix2],line,strlen(line)-1);
	 index_matrix2++;
       }
       index_matrix2--;
       fgets(line,GRAND_LINE,f);
     }
  }
  
  while(fgets(line,GRAND_LINE,f2)!=NULL){ 
    if(strncmp(line,"EDIFICIO A",10)==0){
      i=0;
      MATRIU=1;
    }
    if(strncmp(line,"EDIFICIO D",10)==0){
      i=0;
      MATRIU=2;
    }
    if(strncmp(line,"TOTAL",5)==0){
      i=0;
      MATRIU=3;
    }

    k=0;
    j=0;
    if(strncmp(line,"EDIFICIO A",10)!=0 && MATRIU==1){
      while(k<18){
	llegit[0]=line[k];
	llegit[1]=line[k+1];
	llegit[2]=line[k+2];
	llegit[3]='\0';	  
	matrix4[i][j]=atoi(llegit);
	k+=4;
	j++;
      }
      i++;
    }

    if(strncmp(line,"EDIFICIO D",10)!=0 && MATRIU==2){
      while(k<13){
	llegit[0]=line[k];
	llegit[1]=line[k+1];
	llegit[2]='\0';	  
	matrix5[i][j]=atoi(llegit);
	k+=3;
	j++;
      }
      i++;
    }   

    if(strncmp(line,"TOTAL",5)!=0 && MATRIU==3){
      while(k<8){
	llegit[0]=line[k];
	llegit[1]='\0';	  
	matrix6[i][j]=atoi(llegit);
	k+=2;
	j++;
      }
      i++;
    }    

    
  }
    
  

}

int main(int argc,char *argv[]){

  FILE *f,*f2,*f3;
  int matrix1,matrix2,matrix3,goals;
  int opcio,i,j,val1,val2;  
  char cad[10];
 
  if(argc!=2){
    printf("Error. La llamada al programa ha de ser: lanzador valor\n");
    printf("Fin del programa\n");
    return 1;
  }
  
  opcio=atoi(argv[1]);
  
  if(opcio==1)
    INICIAL=1;
  if(opcio==2)
    FINAL=1;
    
  if(INICIAL){
    f=fopen("income.txt","r");
    f2=fopen("outcome.txt","r");
    read_matrixes(f,f2);
    print_matrixes();  
    fclose(f);
    fclose(f2);
  }

  if(FINAL){
    f=fopen("a","a+");
    f2=fopen("d","a+");
    f3=fopen("s","a+");

    printf("*******************TOTAL*******************\n");
    for(i=0;i<5;i++){
      fscanf(f3,"%s",cad);
      printf("%s\t",cad);
      for(j=0;j<5;j++){
	fscanf(f,"%d",&val1);
	fscanf(f2,"%d",&val2);
	printf("%d\t",val1+val2);
      }
      printf("\n");
    }
    
    fclose(f);
  }
  

}
