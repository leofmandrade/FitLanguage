# FIT LANGUAGE
#### Leonardo da França Moura de Andrade

---

## OBJECTIVES
1. Create a Programming Language.
2. The language must have all the basics structures of a programming language: variables, conditions and loops.

---
## DESCRIPTION
1. Motivation: The language was created to be used in the context of physical exercises, where the user can create a workout plan.
   
2. The language has the following structures:
    - Variables: The user can create variables and assign values to them.
    - Conditions: The user can create conditions to execute a block of code.
    - Loops: The user can create loops to execute a block of code multiple times.
    - Print: The user can print a message to the console.
      
4. The language has the following keywords, in a context of .lua:
    - while -> during
    - if -> workout_day
    - else -> rest_day
    - print -> display
    - end -> workout_finished
    - local -> weight
    - Add (+) -> more_load
    - Sub (-) -> less_load
    - Equal (==) -> same_as
    - Greater (>) -> heavier_than
    - Less (<) -> lighter_than
    - Not, and, or, * and / -> same_as in .lua

---

## EBNF
```bash
BLOCK = { STATEMENT };
STATEMENT = ( "λ" | ASSIGNMENT | LOCAL | PRINT | WHILE | IF ), "\n" ;
ASSIGNMENT = IDENTIFIER, "=", EXPRESSION ;
LOCAL = "weight", IDENTIFIER, ("λ" | ("=", BOOL_EXP));
PRINT = "display", "(", EXPRESSION, ")" ;
WHILE = "during", BOOL_EXP, "do", "\n", "λ", { ( STATEMENT ), "λ" }, "workout_finished";
IF = "workout_day", BOOL_EXP, ":", "\n", "λ", { ( STATEMENT ), "λ" }, ( "λ" | ( "rest_day", ":", "\n", "λ", { ( STATEMENT ), "λ" })), "workout_finished" ;
BOOL_EXP = BOOL_TERM, { ("or"), BOOL_TERM } ;
BOOL_TERM = REL_EXP, { ("and"), REL_EXP } ;
REL_EXP = EXPRESSION, { ("same_as" | "heavier_than" | "lighter_than"), EXPRESSION } ;
EXPRESSION = TERM, { ("more_load" | "less_load" | ".."), TERM } ;
TERM = FACTOR, { ("*" | "/"), FACTOR } ;
FACTOR = NUMBER | STRING | IDENTIFIER | (("more_load" | "less_load" | "not"), FACTOR ) | "(", EXPRESSION, ")" | "receive", "(", ")" ;
IDENTIFIER = LETTER, { LETTER | DIGIT | "_" } ;
NUMBER = DIGIT, { DIGIT } ;
STRING = '"', { LETTER | DIGIT }, '"' ;
LETTER = ( "a" | "..." | "z" | "A" | "..." | "Z" ) ;
DIGIT = ( "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" | "0" ) ;

```
---


bison parser.y -Wcounterexamples
gcc lex.yy.c parser.tab.c -o myparser -lfl
./myparser < test.fit



### CODE EXAMPLES
```python
display(2)
display("hello")
display(4 more_load 1)


weight a = 2 less_load 1
a = less_load 50
during a heavier_than 1 do 
    a = 1
    display(a)
    workout_finished


workout_day a same_as 1:
    display(a)
    workout_finished


workout_day a heavier_than 1:
    display(a)
rest_day:
    display(a)
    workout_finished


weight sets = 4
workout_day sets heavier_than 3 :
    display ("You are pushing yourself!")
rest_day :
    display ("You can do more sets!")
    workout_finished


weight benchpress = 30
weight squat = 50
weight deadlift = 60
during squat heavier_than benchpress do
    display ("You are stronger in squats!")
    squat = squat less_load 5
    display (squat)
    workout_finished
```



## SYNTAX DIAGRAM
![Diagrama Sintático](canvas.png)
