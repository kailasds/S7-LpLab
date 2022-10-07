%{
#include<stdio.h>
int even_num=0,odd_num=0,float_num=0,neg_num=0,total=0;
%}
%%

[0-9]+ {total++; if(yytext[yyleng-1]%2==0)even_num++; else odd_num++;}
-[0-9]+ {total++;neg_num++; if(yytext[yyleng-1]%2==0)even_num++; else odd_num++;}
[0-9]*[.][0-9]* {total++;float_num++;}


%%





int main()
{
yyin= fopen("myfile3.txt","r");
yylex();

printf(" This File contains ...");
printf("\n\t%d even numbers", even_num);
printf("\n\t%d odd numbers", odd_num);
printf("\n\t%d floating point numbers", float_num);
printf("\n\t%d negative numbers", neg_num);
printf("\n\tIn total %d integers\n",total);
}
 
int yywrap()
{
return(1);
}



/*OUTPUT


23
22
43.34
4.1
4455
43
-4
-2

 This File contains ...
	3 even numbers
	3 odd numbers
	2 floating point numbers
	2 negative numbers
	In total 8 integers


*/
