digit [0-9]
letter [A-Za-z]

%{
int count;
%}

%%
{letter}({letter}|{digit})* {count++;}
{digit}({letter}|{digit})* {}
%%
int yywrap(void){}
int main(){
yylex();
printf("number of identifiers=%d\n", count);
return 0;
}



/*OUTPUT
Kailas

abcd
number of identifiers=1

1234
number of identifiers=0

*/
