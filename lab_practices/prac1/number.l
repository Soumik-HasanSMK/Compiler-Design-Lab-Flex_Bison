%{
    #include <stdio.h>
%}

%%
[0-9]+    { printf("'%s' is an integer\n", yytext); }
[0-9]+(\.[0-9]+)    {printf("'%s' is a floating number\n", yytext);}
.         { /* ignore other characters */ }
%%

int main() {
    printf("Enter string: \n");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}