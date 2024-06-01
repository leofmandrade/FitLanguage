%{
#include "parser.tab.h"
%}

%%



"weight"                        { printf("weight\n"); return WEIGHT;}
"display"                       { printf("display\n"); return DISPLAY; }
"during"                        { printf("during\n"); return DURING; }
"do"                            { printf("do\n"); return DO; }
"workout finished"              { printf("workout finished\n"); return WORKOUT_FINISHED; }
"workout day"                   { printf("workout day\n"); return WORKOUT_DAY; }
"rest day"                      { printf("rest day\n"); return REST_DAY; }
"or"                            { printf("or\n"); return OR; }
"and"                           { printf("and\n"); return AND; }
"same as"                       { printf("same as\n"); return SAME_AS; }
"heavier than"                  { printf("heavier than\n"); return HEAVIER_THAN; }
"lighter than"                  { printf("lighter than\n"); return LIGHTER_THAN; }
"more load"                     { printf("more load\n"); return MORE_LOAD; }
"less load"                     { printf("less load\n"); return LESS_LOAD; }
"not"                           { printf("not\n"); return NOT; }
"receive"                       { printf("receive\n"); return RECEIVE; }    

[ \t]+                          { printf("SPACE\n"); }
\n                              { printf("NEWLINE\n"); return NEWLINE; }
"{"                             { printf("LBRACE\n"); return LBRACE; }
"}"                             { printf("RBRACE\n"); return RBRACE; }
"("                             { printf("LPAREN\n"); return LPAREN; }
")"                             { printf("RPAREN\n"); return RPAREN; }
"="                             { printf("EQUALS\n"); return EQUALS; }
":"                             { printf("COLON\n"); return COLON; }
".."                            { printf("DOTDOT\n"); return DOTDOT; }
"*"                             { printf("MULT\n"); return MULT; }
"/"                             { printf("DIV\n"); return DIV; }
[a-zA-Z][a-zA-Z0-9_]*            { yylval.str = strdup(yytext); printf("ID(%s)\n", yylval.str); return IDENTIFIER; }
[0-9]+                           { yylval.num = atoi(yytext); printf("NUMBER(%d)\n", yylval.num); return NUMBER; }
\"[^"\n]*\"            { yylval.str = strdup(yytext+1); yylval.str[strlen(yylval.str)-1] = 0; printf("STRING(%s)\n", yylval.str); return STRING; }


.                                { printf("yytext[0]\n"); return yytext[0]; }
%%

