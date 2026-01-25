%{
#include <stdio.h>
#include <stdlib.h>

/* CORRECCIÓN 1: Declaramos yylex para evitar el error "implicit declaration" */
int yylex();

/* CORRECCIÓN 2: yyerror debe recibir un argumento (char *s) */
void yyerror(char *s);
%}

%token A B D NL
%glr-parser

%%
str1        :       Oracion NL          { printf("No es impostor"); exit(0);}
            ;
Oracion     :       Oracion '^' Parrafo     { }
            |       Parrafo                 { }
            ;
Parrafo     :       Silaba Parrafo Silaba   { }
            |       Silaba                  { }
            ;
Silaba      :       Explosion Alto          { }
            |       A Explosion             { }
            |       A Alto                  { }
            |       Explosion               { }
            ;
Explosion   :       Alto A                  { }
            ;
Alto        :       B                       { }
            |       D                       { }
            ;
%%

void main()
{
   printf("\n Ingrese una secuencia\n");
   yyparse();
}

/* CORRECCIÓN 3: Actualizamos la función para recibir el argumento, aunque no lo uses */
void yyerror(char *s)
{
   /* Bison envía automáticamente mensajes aquí cuando falla la gramática */
   printf("Es un impostor\n\n");
}
