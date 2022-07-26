#include<stdio.h>


int main(){
char str[100];
printf("enter string");
scanf("%s",str);

int state=0,f=0;
for(int i=0;str[i]!='\0';i++){
	if (str[i]=='0'){
		state=1;
	}
	else{
		if(state==0){
			f++;
			break;			
		}state=2;
	}
}


if(state!=2||f!=0)
	printf("invalid string");
else
	printf("valid string");
return 0;
}
