%{
#include <stdio.h>
#include <math.h>
int yylex(void);
void yyerror(char *s);
%}

%token NOMBRE NUMERO

%%

inicio
    : inicio linea
    |
    ;

linea
    : NOMBRE '=' E '\n'
    | E '\n' { printf("=%d\n", $1); }
    | '\n'
    ;

E
    : E '+' T { $$ = $1 + $3; }
    | E '-' T { $$ = $1 - $3; }
    | T { $$ = $1; }
    ;

T
    : T '*' F { $$ = $1 * $3; }
    | T '/' F { $$ = $1 / $3; }
    | F { $$ = $1; }
    ;

F
    : F '^' P { $$ = (int)pow($1, $3); }
    | P { $$ = $1; }
    ;

P
    : '(' E ')' { $$ = $2; }
    | NUMERO { $$ = $1; }
    ;

%%

int main() {
    yyparse();
    return 0;
}

void yyerror(char *s) {
    fprintf(stderr, "%s\n", s);
}
