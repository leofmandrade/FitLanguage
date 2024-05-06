%{
#include "parser.tab.h"
#include <stdio.h>
%}

%%

routine             { return ROUTINE; }
routine_detail      { return ROUTINE_DETAIL; }
set                 { return SET; }
with                { return WITH; }
reps                { return REPS; }
sets                { return SETS; }
if                  { return IF; }
while               { return WHILE; }
do                  { return DO; }
display             { return DISPLAY; }
start               { return START; }
continue            { return CONTINUE; }
increase            { return INCREASE; }
completed           { return COMPLETED; }
rest                { return REST; }
seconds             { return SECONDS; }
"same as"           { return SAME_AS; }
"heavier than"      { return HEAVIER_THAN; }
"lighter than"      { return LIGHTER_THAN; }
"exercise"          { return EXERCISE; }
"warmup"            { return WARMUP; }
"cooldown"          { return COOLDOWN; }
"+"                 { return PLUS; }
"-"                 { return MINUS; }
"*"                 { return TIMES; }
"/"                 { return DIVIDE; }
"{"                 { return LBRACE; }
"}"                 { return RBRACE; }
"("                 { return LPAREN; }
")"                 { return RPAREN; }
"="                 { return EQUAL; }
[a-zA-Z_][a-zA-Z0-9_]* { yylval.str = strdup(yytext); return ID; }
[0-9]+              { yylval.num = atoi(yytext); return NUMERO; }
[ \t\n]+            { /* skip whitespace */ }
.                   { return yytext[0]; }
%%

int yywrap() { return 1; }
