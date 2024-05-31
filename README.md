# FIT LANGUAGE
#### Leonardo da França Moura de Andrade

---

## OBJECTIVES
1. Create a Programming Language.
2. The language must have all the basics structures of a programming language: variables, conditions and loops.

---
## DESCRIPTION
1. Motivation: This language was developed to cater specifically to the fitness industry, facilitating the design and management of comprehensive workout programs.
   
2. The language has the following structures:
    - Variables: The user can create variables and assign values to them.
    - Conditions: The user can create conditions to execute a block of code.
    - Loops: The user can create loops to execute a block of code multiple times.
    - Print: The user can print a message to the console.
---

## EBNF
```bash
BLOCK = STATEMENT, { STATEMENT } ;

STATEMENT = ROUTINE_SETUP
          | ROUTINE_DETAIL
          | VARIABLE_ASSIGNMENT
          | CONDITIONAL
          | EXERCISE_ACTION
          | PRINT
          | PROGRESS_EVENT
          | LOOP
          | EXPRESSION
          | STATEMENT, "\n"
;

LOOP = "while", "(", CONDITION, ")", "{", "\n", STATEMENT, "}" ;

PROGRESS_EVENT = IDENTIFIER, ("continue" | "increase" | "completed"),  "\n" ;

PRINT = "display", "(", EXPRESSION, ")" ;

CONDITIONAL = "if", "(", CONDITION, ")", "{", "\n" , STATEMENT, "}", 
             [ "else", "{", "\n", STATEMENT, "}" ] ;

CONDITION = EXPRESSION, [ REL_OP, EXPRESSION ]
          | EXPRESSION ;

REL_OP = "heavier than"
       | "lighter than"
       | "same as" ;

ROUTINE_SETUP = "routine", IDENTIFIER, "{", "\n", { EXERCISE_DECLARATIONS }, "}" ;

ROUTINE_DETAIL = "routine_detail", IDENTIFIER, "{", "\n", { WORKOUT_PART }, "}" ;

WORKOUT_PART = WARMUP
             | COOLDOWN
             | EXERCISE_ACTION
             | WORKOUT_PART, ( WARMUP | COOLDOWN | EXERCISE_ACTION ) ;

COOLDOWN = "cooldown", "{", "\n", { EXERCISE_ACTION }, "}", "\n" ;

WARMUP = "warmup", "{", "\n", { EXERCISE_ACTION }, "}", "\n" ;

EXERCISE_ACTION = IDENTIFIER, "start", "\n", "rest", NUMBER, "seconds", "\n",
                  { EXERCISE_ACTIONS } ;

EXERCISE_DECLARATIONS = { EXERCISE_DECLARATION } ;

EXERCISE_DECLARATION = "exercise", IDENTIFIER, "with", "reps", NUMBER, "sets", NUMBER, "\n" ;

VARIABLE_ASSIGNMENT = "set", IDENTIFIER, "=", EXPRESSION, "\n"  ;

EXPRESSION = IDENTIFIER
           | NUMBER
           | STRING
           | ARITHMETIC_EXPRESSION ;

ARITHMETIC_EXPRESSION = [ "-" ], EXPRESSION, [ ( "+" | "-" | "*" | "/" ), EXPRESSION ]
                      | "(", EXPRESSION, ")"
                      | "(", ARITHMETIC_EXPRESSION, ")"
                      | EXPRESSION, "=", EXPRESSION ;

IDENTIFIER = LETTER, { LETTER | "_" | DIGIT } ;
NUMBER = DIGIT, { DIGIT } ;
LETTER = ( "a" | "..." | "z" | "A" | "..." | "Z" ) ;
DIGIT = ( "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" | "0" ) ;
STRING = '"', { IDENTIFIER | NUMBER | LETTER | " " }, '"' ;


```
---

### CODE EXAMPLES
```python
routine FullBodyRoutine {
    exercise Burpees with reps 10 sets 3
    exercise Squats with reps 10 sets 3
    exercise Deadlifts with reps 10 sets 3
    exercise Pullups with reps 10 sets 3
    exercise Pushups with reps 10 sets 3
    exercise Planks with reps 10 sets 3
}

routine ChestDay {
    exercise BenchPress with reps 10 sets 3
    exercise InclineBenchPress with reps 10 sets 3
    exercise DumbbellFlyes with reps 10 sets 3
}

routine_detail FullBodyRoutine {
    warmup {
        pushups start 
        rest 30 seconds
        jumping_jacks start
        rest 30 seconds
    }
    cooldown {
        stretching start
        rest 10 seconds
    }
}

set LegDay = ChestDay + 1
if (LegDay heavier than ChestDay) {
    ChestDay increase
} else {
    ChestDay completed
}


set ShoulderLoad = 15
set BackLoad = 70
while (ShoulderLoad lighter than BackLoad) {
    ShoulderLoad = ShoulderLoad + 5
}


display ("You have completed your workout for today")
```




## SYNTAX DIAGRAM
![Diagrama Sintático](canvas.png)
