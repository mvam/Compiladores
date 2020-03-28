%{
#define MAXTOKENLEN 100

int comentario = 0;
char tokenString[MAXTOKENLEN + 1];
static int yylex(void);
%}

digit           [0-9]
number          {digit}+
letter          [a-zA-Z_]
whitespace      [ \t\r\n]+
letterOrNumber  [a-zA-Z_0-9]
identifier      {letter}{letterOrNumber}*
comment			[^*/]


%%

"if"            		{ fputs("IF\n", yyout); }
"else"          		{ fputs("ELSE\n", yyout); }
"while"         		{ fputs("WHILE\n", yyout); }
"return"        		{ fputs("RETURN\n", yyout); }
"int"           		{ fputs("INT\n", yyout); }
"void"          		{ fputs("VOID\n", yyout); }
"+"             		{ fputs("MAIS\n", yyout); }
"-"             		{ fputs("MENOS\n", yyout); }
"*"             		{ fputs("VEZES\n", yyout); }
"/"             		{ fputs("DIVISAO\n", yyout); }
"="             		{ fputs("ATRIBUICAO\n", yyout); }
"<"             		{ fputs("MENOR\n", yyout); }
"<="            		{ fputs("MENORIGUAL\n", yyout); }
">"             		{ fputs("MAIOR\n", yyout); }
">="            		{ fputs("MAIORIGUAL\n", yyout); }
"=="            		{ fputs("IGUAL\n", yyout); }
"!="            		{ fputs("DIFERENTE\n", yyout); }
";"             		{ fputs("SEMI\n", yyout); }
","             		{ fputs("COMMA\n", yyout); }
"("             		{ fputs("LPAREN\n", yyout); }
")"             		{ fputs("RPAREN\n", yyout); }
"["             		{ fputs("LBRACKET\n", yyout); }
"]"             		{ fputs("RBRACKET\n", yyout); }
"{"             		{ fputs("LKEY\n", yyout); }
"}"             		{ fputs("RKEY\n", yyout); }
		
{number}        		{ fputs("NUM\n", yyout); }
{identifier}    		{ fputs("ID\n", yyout); }
{whitespace}    		{ /* skip whitespace */ }
		
.               		{ fputs("ERROR\n", yyout); }

"/*"{comment}"*/"	{ printf("return COMMENT"); }

%%

int yywrap();

int main(int argc, char const *argv[]){
	extern FILE *yyin, *yyout;
	yyin = fopen(argv[1], "r");
	yyout = fopen(argv[2], "w");
	yylex();
	fclose(yyin);
	fclose(yyout);
	return 0;

}

int yywrap(){
	return 1;
}