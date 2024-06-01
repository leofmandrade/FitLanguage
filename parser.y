%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
extern int yylex();
void yyerror(const char *s);
%}

%union {
    int num;     // For numeric values
    char* str;   // For string values
}

%token WEIGHT DISPLAY DURING DO WORKOUT_FINISHED WORKOUT_DAY REST_DAY OR AND
%token SAME_AS HEAVIER_THAN LIGHTER_THAN MORE_LOAD LESS_LOAD NOT RECEIVE
%token LBRACE RBRACE LPAREN RPAREN EQUALS LAMBDA COLON DOTDOT MULT DIV IDENTIFIER NUMBER STRING
%token NEWLINE

%left OR
%left AND
%left SAME_AS HEAVIER_THAN LIGHTER_THAN
%left MORE_LOAD LESS_LOAD DOTDOT
%left MULT DIV
%left NOT

%%
/* EBNF
IF = "workout day", BOOL_EXP, ":", "\n", "λ", { ( STATEMENT ), "λ" }, ( "λ" | ( "rest day", "\n", "λ", { ( STATEMENT ), "λ" })), "workout finished" ;
*/

block: 
    statement

    {
        printf("Entrou na regra 'block'\n");
    }
    ;

statement:
    | statement print
    | statement local
    | statement assignment
    | statement while
    | statement if
    | statement NEWLINE

    {
        printf("Entrou na regra 'statement'\n");
    }
    ;

if:
    WORKOUT_DAY bool_expression COLON NEWLINE block REST_DAY COLON NEWLINE block WORKOUT_FINISHED
    | WORKOUT_DAY bool_expression COLON NEWLINE block WORKOUT_FINISHED

    {
        printf("Entrou na regra 'if'\n");
    }
    ;



while:
    DURING bool_expression DO NEWLINE block WORKOUT_FINISHED

    {
        printf("Entrou na regra 'while'\n");
    }
    ;

bool_expression:
    bool_term
    | bool_term OR bool_term

    {
        printf("Entrou na regra 'bool_expression'\n");
    }
    ;

bool_term:
    rel_expression
    | rel_expression AND rel_expression

    {
        printf("Entrou na regra 'bool_term'\n");
    }
    ;

rel_expression:
    expression SAME_AS expression
    | expression HEAVIER_THAN expression
    | expression LIGHTER_THAN expression

    {
        printf("Entrou na regra 'rel_expression'\n");
    }
    ;


assignment:
    IDENTIFIER EQUALS expression

    {
        printf("Entrou na regra 'assignment'\n");
    }
    ;


local :
    WEIGHT IDENTIFIER
    | WEIGHT IDENTIFIER EQUALS expression

    {
        printf("Entrou na regra 'local'\n");
    }
    ;

print:
    DISPLAY LPAREN expression RPAREN 

    {
        printf("Entrou na regra 'print'\n");
    }
    ;

expression:
    term MORE_LOAD term
    | term LESS_LOAD term
    | term DOTDOT term
    | term

    {
        printf("Entrou na regra 'expression'\n");
    }
    ;

term:
    factor MULT factor
    | factor DIV factor
    | factor

    {
        printf("Entrou na regra 'term'\n");
    }
    ;

factor:
    NUMBER
    | STRING
    | IDENTIFIER
    | MORE_LOAD factor
    | LESS_LOAD factor
    | NOT factor
    | LPAREN expression RPAREN
    | RECEIVE LPAREN RPAREN

    {
        printf("Entrou na regra 'factor'\n");
    }
    ;



%%

void yyerror(const char *s) {
    fprintf(stderr, "Erro de sintaxe: %s\n", s);
}

int main() {
    int result = yyparse();
    if (result == 0) {
        printf("Sintaxe correta\n");
    } else {
        printf("Erro de sintaxe\n");
    }
    return result;
}
