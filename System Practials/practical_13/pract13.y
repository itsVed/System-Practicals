%{
#include<stdio.h>
#include<stdlib.h>
#include<strings.h>
%}
%token alpha beta newline
%%
line : term beta newline {printf("Input is Valid\n"); exit(0);};
term: alpha term |;
%%

int yyerror(char *msg)
{
printf("Invalid Input\n");
exit(0);
}

int main ()
{
printf("Enter the expresssion: ");
yyparse();
}
