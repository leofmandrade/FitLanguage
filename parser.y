%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
extern int yylex();
void yyerror(char *s);
%}

%union {
    char *string;
    int number;
}

%token <string> ID STRING 

%left '+' '-'
%left '*' '/' 

%nonassoc LPAREN RPAREN SAME_AS LESS HEAVER