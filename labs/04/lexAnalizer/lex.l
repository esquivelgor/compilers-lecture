%{
#include <stdio.h>
%}

%%
\/\/[^\n]*                      { printf("COMMENT\n"); }

"int"                           { printf("intdcl\n"); }
"float"                         { printf("floatdcl\n"); }
"char"|"long"|"double"|"string"|"enum"|"pair"|"bool"|"void"|"const"|"static"      { printf("keyword\n"); }

"class"|"struct"|"this"|"public"|"private"|"protected"|"extends"|"implements"|"override"|"virtual"|"new"|"delete"  { printf("oop_keyword\n"); }

"if"|"else"|"switch"|"case"|"break"|"continue"|"while"|"for"|"do"                { printf("control_keyword\n"); }

"main"|"return"|"function"|"using"|"namespace"|"include"                         { printf("structure_keyword\n"); }

"try"|"catch"|"throw"|"finally"                                                  { printf("error_keyword\n"); }

"true"|"false"|"null"                                                            { printf("boolean_literal\n"); }

"first"|"second"                                                                 { printf("map_method\n"); }

"f"                             { printf("floatdcl "); }
"i"                             { printf("intdcl "); }
"p"                             { printf("print "); }
[a-zA-Z]                        { printf("id\n"); }
"="                             { printf("assign "); }
[0-9]+\.[0-9]+                  { printf("fnum\n"); }
[0-9]+                          { printf("inum\n"); }
"+"                             { printf("plus "); }
[ \t]+                          ; // Skip whitespace
\n                              ; // Skip newlines
.                               ; // Skip other characters
%%

int yywrap(void)
{
	return 1;
}
