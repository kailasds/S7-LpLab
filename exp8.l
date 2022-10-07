%{
#include<stdio.h>
#include<string.h>
%}

/* Rules Section*/
%%

[0|1]*000[0|1]* {printf("matching");}
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

10001
matching

1101101
not matching
*/
