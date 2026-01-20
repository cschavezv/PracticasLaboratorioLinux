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
    | /* vacio */
    ;

linea
    : NOMBRE '=' E '\n'
    | E '\n'              { printf("=%d\n", $1); }
    | '\n'
    ;

E
    : E '+' E             { $$ = $1 + $3; }
    | E '-' E             { $$ = $1 - $3; }
    | E '*' E             { $$ = $1 * $3; }
    | E '/' E             { $$ = $1 / $3; }
    | E '^' E             { $$ = (int)pow($1, $3); }
    | '(' E ')'           { $$ = $2; }
    | NUMERO              { $$ = $1; }
    ;

%%

int main() {
    yyparse();
    return 0;
}

void yyerror(char *s) {
    fprintf(stderr, "%s\n", s);
}
