%option noyywrap

%{
//Roll Number: 34
//
#include "cal2.tab.h"
#include<stdlib.h>
%}

digit [0-9]
delim [ \t]

%%
{digit}+ { yylval = atoi(yytext); return(NUM);}
"+" {return(ADD);}
"*" {return(MUL);}
{delim}+ {}
%%

