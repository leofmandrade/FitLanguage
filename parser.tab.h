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
    OPEN_BRACE = 258,              /* OPEN_BRACE  */
    CLOSE_BRACE = 259,             /* CLOSE_BRACE  */
    NEW_LINE = 260,                /* NEW_LINE  */
    SET = 261,                     /* SET  */
    EQUAL = 262,                   /* EQUAL  */
    WHILE = 263,                   /* WHILE  */
    IF = 264,                      /* IF  */
    OPEN_BLOCK = 265,              /* OPEN_BLOCK  */
    CLOSE_BLOCK = 266,             /* CLOSE_BLOCK  */
    DO = 267,                      /* DO  */
    ROUTINE = 268,                 /* ROUTINE  */
    EXERCISE = 269,                /* EXERCISE  */
    WITH = 270,                    /* WITH  */
    REPS = 271,                    /* REPS  */
    SETS = 272,                    /* SETS  */
    REST = 273,                    /* REST  */
    SECONDS = 274,                 /* SECONDS  */
    WARMUP = 275,                  /* WARMUP  */
    COOLDOWN = 276,                /* COOLDOWN  */
    COMPLETED = 277,               /* COMPLETED  */
    DISPLAY = 278,                 /* DISPLAY  */
    SAME_AS = 279,                 /* SAME_AS  */
    HEAVIER_THAN = 280,            /* HEAVIER_THAN  */
    LIGHTER_THAN = 281,            /* LIGHTER_THAN  */
    GREATER_THAN = 282,            /* GREATER_THAN  */
    LESS_THAN = 283,               /* LESS_THAN  */
    ROUTINE_DETAIL = 284,          /* ROUTINE_DETAIL  */
    START = 285,                   /* START  */
    CONTINUE = 286,                /* CONTINUE  */
    INCREASE = 287,                /* INCREASE  */
    PLUS = 288,                    /* PLUS  */
    MINUS = 289,                   /* MINUS  */
    TIMES = 290,                   /* TIMES  */
    DIVIDE = 291,                  /* DIVIDE  */
    ID = 292,                      /* ID  */
    NUMERO = 293                   /* NUMERO  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_PARSER_TAB_H_INCLUDED  */
