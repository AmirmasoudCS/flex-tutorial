%{
    /* Definitions */



}%

%%  /* Rules */
    

    [a-z] {printf("Single lower-case character\n");}
    . {printf("Not a lower-case character\n");} /* dot denotes that anything but a new line */
    \n {return 0;}

%%

yywrap() {}

int main() {
    printf("Enter string: ");
    yylex();

    return 0;
}