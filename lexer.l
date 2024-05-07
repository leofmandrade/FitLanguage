%{
#include "parser.tab.h"
%}

%%


"else"                           { return ELSE; }
"seconds"                        { return SECONDS; }
"rest"                           { return REST; }
"routine"                        { return ROUTINE; }
"routine_detail"                 { return ROUTINE_DETAIL; }
"exercise"                       { return EXERCISE; }
"with"                           { return WITH; }
"reps"                           { return REPS; }
"sets"                           { return SETS; }
"start"                          { return START; }
"continue"                       { return CONTINUE; }
"increase"                       { return INCREASE; }
"completed"                      { return COMPLETED; }
"warmup"                         { return WARMUP; }
"cooldown"                       { return COOLDOWN; }
"display"                        { return DISPLAY; }
"if"                             { return IF; }
"while"                          { return WHILE; }
"same as"                        { return SAME_AS; }
"heavier than"                   { return HEAVIER_THAN; }
"lighter than"                   { return LIGHTER_THAN; }
"set"                            { return SET; }
[ \t]+                           ; // Ignore white spaces
\n                               { return NEWLINE; }
"{"                              { return LBRACE; }
"}"                              { return RBRACE; }
"("                              { return LPAREN; }
")"                              { return RPAREN; }
"="                              { return EQUALS; }
"+"                              { return PLUS; }
"-"                              { return MINUS; }
"*"                              { return MULT; }
"/"                              { return DIV; }
[a-zA-Z][a-zA-Z0-9_]*            { yylval.str = strdup(yytext); return IDENTIFIER; }
[0-9]+                           { yylval.num = atoi(yytext); return NUMBER; }
\"[^"\n]*\"            { yylval.str = strdup(yytext+1); yylval.str[strlen(yylval.str)-1] = 0; return STRING; }


.                                { return yytext[0]; }
%%

