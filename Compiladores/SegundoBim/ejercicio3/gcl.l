%{
#include "y.tab.h"
#include <stdlib.h>
extern int yylval;
%}

%%

[0-9]+      { yylval = atoi(yytext); return NUMERO; }
[ \t\r]+    ;
\n          { return '\n'; }
.           { return yytext[0]; }

%%
