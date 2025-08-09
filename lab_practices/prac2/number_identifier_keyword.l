%{
    #include<stdio.h>
%}

%%
int|float|if|else|for|do|while|return|break {printf("'%s' is a keyword\n", yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("'%s' is an Identifier\n", yytext);}
[0-9]+(\.[0-9]+)?([e][+-]?[0-9]+)? {printf("'%s' is a Number\n", yytext);}
. { printf("Others symbol\n"); }
\n { return 0;}
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter a string : \n");
    yylex();
    return 0;
}