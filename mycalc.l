%{
#include <stdio.h>
#include "y.tab.h"

int
yywrap(void){
	return 1;
}
%}

%%
"+"  return ADD;
"-"  return SUB;
"*"  return MUL;
"/"  return DIV;
"\n" return CR;
"("  return LP;
")"  return RP;
([1-9][0-9]*)|0|([0-9]+\.[0-9]+)   {
	double tmp;
	sscanf(yytext, "%lf", &tmp);  // from a string, get a formatted input, the yytext is interpreted as long float
	yylval.double_value = tmp; 
	return DOUBLE_LITERAL;
}

[ \t];

"quit"  {
    printf("thanks for using!\n");
    exit(1);
}
.   {
	fprintf(stderr, "lexcial error.\n"); 
	exit(1);
}
%%