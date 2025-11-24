%{
  #include <stdio.h>
  int total = 0;
%}

WS  [ \t]+

%%
/* pares sustractivos */
IV  { total += 4;  printf("token: IV\n"); }
IX  { total += 9;  printf("token: IX\n"); }
XL  { total += 40; printf("token: XL\n"); }
XC  { total += 90; printf("token: XC\n"); }
CD  { total += 400;printf("token: CD\n"); }
CM  { total += 900;printf("token: CM\n"); }

/* simples */
I   { total += 1;  printf("token: I\n"); }
V   { total += 5;  printf("token: V\n"); }
X   { total += 10; printf("token: X\n"); }
L   { total += 50; printf("token: L\n"); }
C   { total += 100;printf("token: C\n"); }
D   { total += 500;printf("token: D\n"); }
M   { total += 1000;printf("token: M\n"); }

/* ignora espacios */
{WS}  { /* nada */ }

/* ignora carriage return por Windows */
\r    { /* nada */ }

/* fin de número */
\n    {
        int val = total;
        total = 0;
        return val;
      }

/* fin de archivo */
<<EOF>> {
        int val = total;
        total = 0;
        if (val != 0) return val;
        return 0;
      }

/* cualquier cosa rara */
.     {
        printf("INVALIDO: [%s]\n", yytext);
      }
%%

int main() {
  printf("=== LEX VERSION DEBUG ===\n");
  int primero = yylex();
  int segundo = yylex();
  printf("%d + %d = %d\n", primero, segundo, primero + segundo);
  return 0;
}
