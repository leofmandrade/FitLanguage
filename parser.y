%{
#include <stdio.h>
#include <stdlib.h>
%}


%token OPEN_BRACE CLOSE_BRACE NEW_LINE SET EQUAL WHILE IF OPEN_BLOCK CLOSE_BLOCK DO ROUTINE EXERCISE WITH REPS SETS REST SECONDS WARMUP
%token COOLDOWN COMPLETED DISPLAY
%token SAME_AS HEAVIER_THAN LIGHTER_THAN GREATER_THAN LESS_THAN ROUTINE_DETAIL
%token START CONTINUE INCREASE PLUS MINUS TIMES DIVIDE ID NUMERO


%%
program: 
    block
    ;


block:
    OPEN_BRACE statement CLOSE_BRACE
    ;

statement:
    routine_setup NEW_LINE
    | routine_detail NEW_LINE
    | variable_assignment NEW_LINE
    | conditional NEW_LINE
    | loop NEW_LINE
    | exercise_action NEW_LINE
    | progress_event NEW_LINE
    | print NEW_LINE
    ;

variable_assignment:
    SET identifier EQUAL expression
    ;

conditional:
    IF OPEN_BRACE condition CLOSE_BRACE OPEN_BLOCK statement CLOSE_BLOCK
    ;

condition:
    expression rel_op expression
    ;

rel_op:
    SAME_AS 
    | HEAVIER_THAN
    | LIGHTER_THAN
    | GREATER_THAN
    | LESS_THAN
    ;

loop:
    WHILE OPEN_BRACE condition CLOSE_BRACE DO OPEN_BLOCK statement CLOSE_BLOCK
    ;

routine_setup:
    ROUTINE identifier OPEN_BRACE exercise_declaration CLOSE_BRACE
    ;

routine_detail:
    ROUTINE_DETAIL identifier OPEN_BRACE workout_part CLOSE_BRACE
    ;

exercise_declaration:
    EXERCISE identifier WITH REPS NUMERO SETS NUMERO NEW_LINE
    ;

exercise_action:
    identifier action_type 
    | identifier action_type REST NUMERO SECONDS
    | identifier action_type identifier
    | identifier action_type progress_event
    ;

workout_part:
    warmup 
    | exercise_session
    | cooldown
    ;

warmup:
    WARMUP OPEN_BRACE exercise_action CLOSE_BRACE
    ;

exercise_session:
    identifier OPEN_BRACE exercise_action CLOSE_BRACE
    | identifier OPEN_BRACE exercise_action REST NUMERO SECONDS CLOSE_BRACE
    ;

cooldown:
    COOLDOWN OPEN_BRACE exercise_action CLOSE_BRACE
    ;

progress_event:
    identifier COMPLETED
    ;

action_type:
    START
    | CONTINUE
    | INCREASE
    ;

print:
    DISPLAY OPEN_BRACE expression CLOSE_BRACE
    ;

expression:
    identifier
    | NUMERO
    | arithmetic_expression
    ;

arithmetic_expression:
    expression PLUS expression
    | expression MINUS expression
    | expression TIMES expression
    | expression DIVIDE expression
    ;

identifier:
    ID { ID | "_" | digit }
    ;


%%



void yyerror(char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main(){
    int res = yyparse();
    printf("res: %d\n", res);
    if (res == 0) {
        printf("Parsing successful\n");
        return 1;
    } else {
        printf("Parsing failed\n");
        return 0;
    }


}






