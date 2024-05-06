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
    IDENTIFIER = 258,              /* IDENTIFIER  */
    NUMBER = 259,                  /* NUMBER  */
    ROUTINE = 260,                 /* ROUTINE  */
    ROUTINE_DETAIL = 261,          /* ROUTINE_DETAIL  */
    EXERCISE = 262,                /* EXERCISE  */
    WITH = 263,                    /* WITH  */
    REPS = 264,                    /* REPS  */
    SETS = 265,                    /* SETS  */
    START = 266,                   /* START  */
    CONTINUE = 267,                /* CONTINUE  */
    INCREASE = 268,                /* INCREASE  */
    COMPLETED = 269,               /* COMPLETED  */
    WARMUP = 270,                  /* WARMUP  */
    COOLDOWN = 271,                /* COOLDOWN  */
    DISPLAY = 272,                 /* DISPLAY  */
    IF = 273,                      /* IF  */
    WHILE = 274,                   /* WHILE  */
    DO = 275,                      /* DO  */
    SAME_AS = 276,                 /* SAME_AS  */
    HEAVIER_THAN = 277,            /* HEAVIER_THAN  */
    LIGHTER_THAN = 278,            /* LIGHTER_THAN  */
    SET = 279,                     /* SET  */
    REST = 280,                    /* REST  */
    SECONDS = 281,                 /* SECONDS  */
    ELSE = 282,                    /* ELSE  */
    LBRACE = 283,                  /* LBRACE  */
    RBRACE = 284,                  /* RBRACE  */
    LPAREN = 285,                  /* LPAREN  */
    RPAREN = 286,                  /* RPAREN  */
    EQUALS = 287,                  /* EQUALS  */
    PLUS = 288,                    /* PLUS  */
    MINUS = 289,                   /* MINUS  */
    MULT = 290,                    /* MULT  */
    DIV = 291,                     /* DIV  */
    NEWLINE = 292                  /* NEWLINE  */
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

#line 106 "parser.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_PARSER_TAB_H_INCLUDED  */
