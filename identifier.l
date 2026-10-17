
%{
#include <stdio.h>
%}

%%

[0-1][0-9]{10}\n  {
    printf("Valid phone number.\n");
}

[a-zA-Z_][a-zA-Z0-9_]*\n {
    printf("Valid Identifier.\n");
}

[^ \t\n][^\n]*\n {
    printf("Invalid Identifier.\n");
}

[ \t]+\n {
    printf("Invalid Identifier.\n");
}

%%

int yywrap(void)
{
    return 1;
}

int main(void)
{
    printf("Input an Identifier:\t");
    yylex();
    return 0;
}
