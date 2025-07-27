%option noyywrap

%{
//Roll Number: 34
//
%}

digit [0-9]
delim [ \t]

%%
{digit}{digit}* {printf("%s -> NUMBER\n", yytext);}
"+" {printf("%s -> ADD\n", yytext);}
"*" {printf("%s -> MUL\n", yytext);}
{delim} {}
%%

int main()
{
  yylex();
  return 0;
}
