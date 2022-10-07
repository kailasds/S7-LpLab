#include<stdio.h>


int main(){
char str[100];
printf("enter string");
scanf("%s",str);

int state=0;
for(int i=0;str[i]!='\0';i++){
	if(state==0){	
		if (str[i]=='a')
			state=1;
		else if (str[i]=='b')
			state=2;
	}
	else if(state==1){
		if (str[i]=='b')
			state=0;		
	}
	else if(state==2){
		if (str[i]=='b')
			state=3;
	}
	else if(state==3){
		if (str[i]=='a')
			state=1;
		else if (str[i]=='b')
			state=2;
	}
}


if(state!=3)
	printf("invalid string");
else
	printf("valid string");
return 0;
}




/*OUTPUT
Kailas

enter string aabbbaabbb
valid string

enter string ababbbb
invalid string
*/
