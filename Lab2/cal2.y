%{
#include<stdio.h>
void yyerror(char *s);
int yylex();
%}

%token NUM ADD MUL
%start cal

%%
cal:
  | cal line
  line: NUM ADD NUM MUL NUM {$$ = $1 + $3 * $5; printf("%d\n", $$);}
    | NUM ADD NUM MUL NUM '\n' {$$ = $1 + $3 * $5; printf("%d\n", $$);}
    ;
%%

int main()
{
  yyparse();
  printf("Parsing Finished");
  return 0;
}

void yyerror(char *s)
{
    fprintf(stderr, "error: %s\n", s);
}