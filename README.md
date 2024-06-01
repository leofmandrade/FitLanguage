# FIT LANGUAGE
#### Leonardo da França Moura de Andrade

---
### OBJETIVOS
Criar uma Linguagem de Programação.
A linguagem deve ter todas as estruturas básicas de uma linguagem de programação: variáveis, condições e loops.

### DESCRIÇÃO

**Motivação:** 
- A linguagem foi projetada para ser intuitiva e bem simples, com o objetivo de ser usada no contexto de exercícios físicos e academia, onde o usuário pode criar um plano de treino.

**Curiosidades:**
- Terminologia de Fitness: As palavras-chave da linguagem foram escolhidas para refletir termos comuns usados em academias e treinos. Por exemplo, weight para definir variáveis, display para imprimir mensagens, e workout_finished para terminar blocos de código.
- Simplicidade: A linguagem busca ser simples e direta, permitindo que usuários sem experiência em programação possam aprender e utilizá-la rapidamente.

---

A linguagem possui as seguintes estruturas:

- **Variáveis:** O usuário pode criar variáveis e atribuir valores a elas.
- **Condições:** O usuário pode criar condições para executar um bloco de código.
- **Loops:** O usuário pode criar loops para executar um bloco de código várias vezes.
- **Impressão:** O usuário pode imprimir uma mensagem no console.



A linguagem possui as seguintes palavras-chave, no contexto do .lua:
- **while** -> **during**
- **if** -> **workout_day**
- **else** -> **rest_day**
- **print** -> **display**
- **end** -> **workout_finished**
- **local** -> **weight**
- **Add (+)** -> **more_load**
- **Sub (-)** -> **less_load**
- **Equal (==)** -> **same_as**
- **Greater (>)** -> **heavier_than**
- **Less (<)** -> **lighter_than**
- **Not, and, or, \*, /** -> o mesmo que no .lua


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


### Exemplo Completo com Base na EBNF

Aqui está um exemplo completo de um código escrito nessa nova linguagem:

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


workout_day a heavier_than 1:
    display(a)
rest_day:
    display(a)
    workout_finished


weight sets = 4
workout_day sets heavier_than 3 :
    display ("You are pushing yourself!")
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

---
### Flex e Bison
Para a construção do analisador léxico e sintático, foram utilizadas as ferramentas Flex e Bison.
```bash
flex lexer.l
bison parser.y -Wcounterexamples
gcc lex.yy.c parser.tab.c -o myparser -lfl
./myparser < test.fit
```
---
### Para rodar o programa do compilador
```bash
python main.py test.fit
```

---



### SYNTAX DIAGRAM
![Diagrama Sintático](canvas.png)
