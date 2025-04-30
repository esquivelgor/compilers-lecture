// To execute:
// lex lex.l && gcc scanner.c lex.yy.c -o scanner
// ./scanner < config.in

#include <stdio.h>

extern int yylex(void);

int main(void) {
    yylex();  // Lex handles all printing
    return 0;
}
