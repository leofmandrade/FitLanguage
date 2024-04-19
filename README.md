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
3. The language has the following keywords, in a context of .lua:
    - while -> during
    - if -> workout day
    - print -> display
    - end -> workout finished
    - local -> weight
    - Add (+) -> more load
    - Sub (-) -> less load
    - Equal (==) -> same as
    - Greater (>) -> heavier than
    - Less (<) -> lighter than
    - Not, and, or, * and / -> same as in .lua

---

## EBNF
```bash
BLOCK = { STATEMENT };
STATEMENT = ( "λ" | ASSIGNMENT | LOCAL | PRINT | WHILE | IF ), "\n" ;
ASSIGNMENT = IDENTIFIER, "=", EXPRESSION ;
LOCAL = "weight", IDENTIFIER, ("λ" | ("=", BOOL_EXP));
PRINT = "display", "(", EXPRESSION, ")" ;
WHILE = "during", BOOL_EXP, "do", "\n", "λ", { ( STATEMENT ), "λ" }, "workout finished";
IF = "workout day", BOOL_EXP, ":", "\n", "λ", { ( STATEMENT ), "λ" }, ( "λ" | ( "rest day", "\n", "λ", { ( STATEMENT ), "λ" })), "workout finished" ;
BOOL_EXP = BOOL_TERM, { ("or"), BOOL_TERM } ;
BOOL_TERM = REL_EXP, { ("and"), REL_EXP } ;
REL_EXP = EXPRESSION, { ("same as" | "heavier than" | "lighter than"), EXPRESSION } ;
EXPRESSION = TERM, { ("more load" | "less load" | ".."), TERM } ;
TERM = FACTOR, { ("*" | "/"), FACTOR } ;
FACTOR = NUMBER | STRING | IDENTIFIER | (("more load" | "less load" | "not"), FACTOR ) | "(", EXPRESSION, ")" | "receive", "(", ")" ;
IDENTIFIER = LETTER, { LETTER | DIGIT | "_" } ;
NUMBER = DIGIT, { DIGIT } ;
STRING = '"', { LETTER | DIGIT }, '"' ;
LETTER = ( "a" | "..." | "z" | "A" | "..." | "Z" ) ;
DIGIT = ( "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" | "0" ) ;

```
---

### CODE EXAMPLES
```python
weight sets = 4
workout started sets heavier than 3 :
    display ("You are pushing yourself!")
rest day :
    display ("You can do more sets!")
workout finished
```


```python
weight benchpress = 30
weight squat = 50
weight deadlift = 60

during squat heavier than benchpress :
    display ("You are stronger in squats!")
    squat = squat less load 5
    display (squat)
workout finished
```



## SYNTAX DIAGRAM
![Diagrama Sintático](image.png)