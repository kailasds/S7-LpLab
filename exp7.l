/*lex program to count number of words*/
%{
#include<stdio.h>
#include<string.h>
%}

/* Rules Section*/
%%

(aa)[a|b]*(bb) {printf("matching");}
.* {printf("not matching");} 

%%

int yywrap(void){}

int main()
{
	yylex();
	return 0;
}



/*OUTPUT
Kailas

aabb
matching

abbb
not matching
*/
