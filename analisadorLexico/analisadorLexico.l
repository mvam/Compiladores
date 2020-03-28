%{
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

"if"            		{ return IF; }
"else"          		{ return ELSE; }
"while"         		{ return WHILE; }
"return"        		{ return RETURN; }
"int"           		{ return INT; }
"void"          		{ return VOID; }
"+"             		{ return MAIS; }
"-"             		{ return MENOS; }
"*"             		{ return VEZES; }
"/"             		{ return DIVISAO; }
"="             		{ return ATRIBUICAO; }
"<"             		{ return MENOR; }
"<="            		{ return MENORIGUAL; }
">"             		{ return MAIOR; }
">="            		{ return MAIORIGUAL; }
"=="            		{ return IGUAL; }
"!="            		{ return DIFERENTE; }
";"             		{ return SEMI; }
","             		{ return COMMA; }
"("             		{ return LPAREN; }
")"             		{ return RPAREN; }
"["             		{ return LBRACKET; }
"]"             		{ return RBRACKET; }
"{"             		{ return LKEY; }
"}"             		{ return RKEY; }
		
{number}        		{ return NUM; }
{identifier}    		{ return ID; }
{whitespace}    		{ /* skip whitespace */ }
		
.               		{ return ERROR; }

"/*"{comment}"*/"	{ return COMMENT; }

%%

int yywrap();

int main(void){
	yylex();
	return 0;

}

int yywrap(){
	return 1;
}
