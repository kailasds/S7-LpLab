%{
#include<stdio.h>
int three_num=0,num=0,id_a=0,id_b=0,total=0;
%}
%%


 
[0-9]* {num++; if(yyleng==3)three_num++;}
[A-Za-z]([A-Za-z]|[0-9])* {total++;if(yytext[0]=='a') id_a++; if(yytext[yyleng-1]=='b') id_b++;}
%%





int main()
{
yyin= fopen("myfile2.txt","r");
yylex();

printf(" This File contains ...");
printf("\n\t%d 3 digit numbers", three_num);
printf("\n\t%d identifier starting with 'a' ", id_a++);
printf("\n\t%d identifier ending with 'b' ", id_b++);
printf("\n\t%d digits", num);
printf("\n\tIn total %d characters.\n",total);
}
 
int yywrap()
{
return(1);
}



/*OUTPUT

myfile2.txt

300 200 2000 19
adfgjie
Aaddefsdg
0sdfweb
5634gxtdbg
gtdrhb
dfgsb
43
54


 This File contains ...
	2 3 digit numbers
	1 identifier starting with 'a' 
	3 identifier ending with 'b' 
	8 digits
	In total 6 characters.

*/
