
%{
#include <stdio.h>
%}

%%

[a-z]   { printf("Single lower-case character\n"); }
\t      { printf("Tab character\n");}
.       { printf("Not a lower-case character\n"); }
\n      { return 0; }

%%

int yywrap(void)
{
    return 1;
}

int main(void)
{
    printf("Enter string: ");
    yylex();
    return 0;
}
