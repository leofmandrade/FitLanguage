%{
#include "parser.tab.h"
%}

%%

"routine"             { return ROUTINE; printf("Token ROUTINE\n"); }
"with"                { return WITH; printf("Token WITH\n"); }
"reps"                { return REPS; printf("Token REPS\n"); }
"sets"                { return SETS; printf("Token SETS\n"); }
"if"                  { return IF; printf("Token IF\n"); }
"while"               { return WHILE; printf("Token WHILE\n"); }
"do"                  { return DO; printf("Token DO\n"); }
"display"             { return DISPLAY; printf("Token DISPLAY\n"); }
"start"               { return START; printf("Token START\n"); }
"continue"            { return CONTINUE; printf("Token CONTINUE\n"); }
"increase"            { return INCREASE; printf("Token INCREASE\n"); }
"completed"           { return COMPLETED; printf("Token COMPLETED\n"); }
"rest"                { return REST; printf("Token REST\n"); }
"seconds"             { return SECONDS; printf("Token SECONDS\n"); }
"routine_detail"      { return ROUTINE_DETAIL; printf("Token ROUTINE_DETAIL\n"); }
"exercise"            { return EXERCISE; printf("Token EXERCISE\n"); }
"warmup"              { return WARMUP; printf("Token WARMUP\n"); }
"cooldown"            { return COOLDOWN; printf("Token COOLDOWN\n"); }
"set"                 { return SET; printf("Token SET\n"); }
"same as"             { return SAME_AS; printf("Token SAME_AS\n"); }
"heavier than"        { return HEAVIER; printf("Token HEAVIER\n"); }
"lighter than"        { return LIGHTER; printf("Token LIGHTER\n"); }
"greater than"        { return GREATER; printf("Token GREATER\n"); }
"less than"           { return LESS; printf("Token LESS\n"); }
"+"                   { return PLUS; printf("Token PLUS\n"); }
"-"                   { return MINUS; printf("Token MINUS\n"); }
"*"                   { return TIMES; printf("Token TIMES\n"); }
"/"                   { return DIVIDE; printf("Token DIVIDE\n"); }
"="                   { return EQUAL; printf("Token EQUAL\n"); }
"{"                   { return LBRACE; printf("Token LBRACE\n"); }
"}"                   { return RBRACE; printf("Token RBRACE\n"); }
"("                   { return LPAREN; printf("Token LPAREN\n"); }
")"                   { return RPAREN; printf("Token RPAREN\n"); }
[0-9]+                { yylval.numero = atoi(yytext); return NUMERO; printf("Token NUMERO\n"); }
[a-zA-Z_][a-zA-Z0-9_]* { yylval.id = strdup(yytext); return ID; printf("Token ID\n"); }
\"([^"]|\\.)*\"       { yylval.string = strdup(yytext); return STRING; printf("Token STRING\n"); }
"\n"                  { return NEWLINE; printf("Token NEWLINE\n"); }
[ \t\r]+              { /* ignore whitespace */ }
"//".*                { /* ignore comments */ }
.                     { return yytext[0]; }
<<EOF>>               { return EOF; printf("Token EOF\n"); }
%%

x