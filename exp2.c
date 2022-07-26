#include<stdio.h>


int main(){
char str[100];
printf("enter string");
scanf("%s",str);

int state=0;
for(int i=0;str[i]!='\0';i++){
	if(state==0){	
		if (str[i]=='0')
			state=1;
		else if (str[i]=='1')
			state=0;
	}
	else if(state==1){
		if (str[i]=='0')
			state=2;
		else if (str[i]=='1')
			state=1;
	}
	else if(state==2){
		if (str[i]=='0')
			state=1;
		else if (str[i]=='1')
			state=2;
	}
}


if(state!=2)
	printf("invalid string");
else
	printf("valid string");
return 0;
}
