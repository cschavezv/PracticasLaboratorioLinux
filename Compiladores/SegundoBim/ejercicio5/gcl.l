%{
#include <stdio.h>
#include <stdlib.h>
#include "y.tab.h"
%}
%%
"a"        {return A;}
"b"        {return B;}
"d"        {return D;}
[\n]       {return NL;}
[ \t]      ;
.          {return(yytext[0]);}
%%
int yywrap()
{
    return 1;
}
