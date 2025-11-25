%{
    #include <stdio.h>

    int num_mayus = 0;
    int num_minus = 0;
    int num_digitos = 0;
    int num_blancos = 0;
%}

%%

[A-Z]       { num_mayus++; }
[a-z]       { num_minus++; }
[0-9]       { num_digitos++; }
[ \t\n]     { num_blancos++; }
.           { }

%%

int main(void)
{
    yylex();

    printf("Letras mayusculas : %d\n", num_mayus);
    printf("Letras minusculas : %d\n", num_minus);
    printf("Digitos           : %d\n", num_digitos);
    printf("Espacios blancos  : %d\n", num_blancos);

    return 0;
}
