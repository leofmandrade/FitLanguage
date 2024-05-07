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

%token <str> IDENTIFIER STRING
%token <num> NUMBER
%token ROUTINE ROUTINE_DETAIL EXERCISE WITH REPS SETS START CONTINUE INCREASE COMPLETED WARMUP COOLDOWN DISPLAY IF WHILE SAME_AS HEAVIER_THAN LIGHTER_THAN SET REST SECONDS ELSE
%token LBRACE RBRACE LPAREN RPAREN EQUALS PLUS MINUS MULT DIV NEWLINE

%type <num> expression condition

%left PLUS MINUS
%left MULT DIV
%nonassoc LPAREN RPAREN


%%
block: 
    statement
    | block statement
    ;
;

statement:
    routine_setup 
    | routine_detail
    | variable_assignment
    | conditional
    | exercise_action
    | print
    | progress_event
    | loop
    | expression
    | statement NEWLINE
;

loop:
    WHILE LPAREN condition RPAREN LBRACE NEWLINE statement RBRACE
;

progress_event:
    IDENTIFIER CONTINUE NEWLINE
    | IDENTIFIER INCREASE NEWLINE
    | IDENTIFIER COMPLETED NEWLINE
;

print:
    DISPLAY LPAREN expression RPAREN

conditional:
    IF LPAREN condition RPAREN LBRACE NEWLINE statement RBRACE
    | IF LPAREN condition RPAREN LBRACE NEWLINE statement RBRACE ELSE LBRACE NEWLINE statement RBRACE
; 

condition:
    expression rel_op expression
    | expression
;

rel_op:
    HEAVIER_THAN
    | LIGHTER_THAN
    | SAME_AS
;


routine_setup:
    ROUTINE IDENTIFIER LBRACE NEWLINE exercise_declarations RBRACE
;

routine_detail:
    ROUTINE_DETAIL IDENTIFIER LBRACE NEWLINE workout_part RBRACE
;

workout_part:
    workout_part warmup
    | workout_part cooldown
    | workout_part exercise_action
    | warmup
    | cooldown
    | exercise_action
;

cooldown:
    COOLDOWN LBRACE NEWLINE exercise_action RBRACE NEWLINE

warmup:
    WARMUP LBRACE NEWLINE exercise_action RBRACE NEWLINE
;

exercise_action:
    IDENTIFIER START NEWLINE REST NUMBER SECONDS NEWLINE
    | IDENTIFIER START NEWLINE REST NUMBER SECONDS NEWLINE exercise_action
;


exercise_declarations:
    exercise_declarations exercise_declaration
    | exercise_declaration
;

exercise_declaration:
    EXERCISE IDENTIFIER WITH REPS NUMBER SETS NUMBER NEWLINE
;

variable_assignment:
    SET IDENTIFIER EQUALS expression NEWLINE
;

expression:
    IDENTIFIER
    | NUMBER
    | arithmetic_expression
    | STRING
;

arithmetic_expression:
    MINUS expression %prec PLUS
    |expression PLUS expression
    | expression MINUS expression
    | expression MULT expression
    | expression DIV expression
    | LPAREN expression RPAREN
    | LPAREN arithmetic_expression RPAREN
    | expression EQUALS expression
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