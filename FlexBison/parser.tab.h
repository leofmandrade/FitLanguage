/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_PARSER_TAB_H_INCLUDED
# define YY_YY_PARSER_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    WEIGHT = 258,                  /* WEIGHT  */
    DISPLAY = 259,                 /* DISPLAY  */
    DURING = 260,                  /* DURING  */
    DO = 261,                      /* DO  */
    WORKOUT_FINISHED = 262,        /* WORKOUT_FINISHED  */
    WORKOUT_DAY = 263,             /* WORKOUT_DAY  */
    REST_DAY = 264,                /* REST_DAY  */
    OR = 265,                      /* OR  */
    AND = 266,                     /* AND  */
    SAME_AS = 267,                 /* SAME_AS  */
    HEAVIER_THAN = 268,            /* HEAVIER_THAN  */
    LIGHTER_THAN = 269,            /* LIGHTER_THAN  */
    MORE_LOAD = 270,               /* MORE_LOAD  */
    LESS_LOAD = 271,               /* LESS_LOAD  */
    NOT = 272,                     /* NOT  */
    RECEIVE = 273,                 /* RECEIVE  */
    LBRACE = 274,                  /* LBRACE  */
    RBRACE = 275,                  /* RBRACE  */
    LPAREN = 276,                  /* LPAREN  */
    RPAREN = 277,                  /* RPAREN  */
    EQUALS = 278,                  /* EQUALS  */
    LAMBDA = 279,                  /* LAMBDA  */
    COLON = 280,                   /* COLON  */
    DOTDOT = 281,                  /* DOTDOT  */
    MULT = 282,                    /* MULT  */
    DIV = 283,                     /* DIV  */
    IDENTIFIER = 284,              /* IDENTIFIER  */
    NUMBER = 285,                  /* NUMBER  */
    STRING = 286,                  /* STRING  */
    NEWLINE = 287                  /* NEWLINE  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 9 "parser.y"

    int num;     // For numeric values
    char* str;   // For string values

#line 101 "parser.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_PARSER_TAB_H_INCLUDED  */
