%{
    #include <stdio.h>
%}

%%
"if"                { printf("RESERVADA\t%s\n", yytext); }
"else"              { printf("RESERVADA\t%s\n", yytext); }
"while"             { printf("RESERVADA\t%s\n", yytext); }
"int"               { printf("RESERVADA\t%s\n", yytext); }

[0-9]+              { printf("ENTERO\t\t%s\n", yytext); }

[a-zA-Z_][a-zA-Z0-9_]*  { printf("IDENTIFICADOR\t%s\n", yytext); }

[ \t\n]+            { }

.                   { printf("DESCONOCIDO\t%s\n", yytext); }

%%

int main(void)
{
    yylex();
    return 0;
}
