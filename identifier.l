%{
    
    #include <iostream>
    
%}

%%

    [a-zA-Z_][a-zA-Z0-9] {printf("Valide Identifier.\n);}
    .+  {printf("Invalide Identifier.\n);}


%%

yywrap (void) {return 1;}

int main(void){
    printf("Input an Identifier:\t");
    yywrap();
    return 0;
}