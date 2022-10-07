#include<stdio.h>


int main(){
char str[100];
printf("enter string");
scanf("%s",str);

int arr[6][2];

 arr[0][0]=1;
 arr[0][1]=-1;
 arr[1][0]=2;
 arr[1][1]=-1;
 arr[2][0]=2;
 arr[2][1]=3;
 arr[3][0]=-1;
 arr[3][1]=4;
 arr[4][0]=-1;
 arr[4][1]=5;
 arr[5][0]=-1;
 arr[5][1]=5;



int l,state=0;
for(int i=0;str[i]!='\0';i++){
	if(str[i]=='a')
		l=0;
	else if (str[i]=='b')
		l=1;
	else
		printf("invalid entry");
	state=arr[state][l];

}


if(state==2||state==3||state==4)
	printf("valid string");
else
	printf("invalid string");
return 0;
}



/*OUTPUT
Kailas

enter string aaab
valid string

enter string aaabbbb
invalid string
*/
