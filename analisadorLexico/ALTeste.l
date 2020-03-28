%{
    int comentario = 0;
    //char tokenString[MAXTOKENLEN + 1];
    static int yylex(void);
%}

digit           [0-9]
number          {digit}+
letter          [a-zA-Z_]
whitespace      [ \t\r\n]+
letterOrNumber  [a-zA-Z_0-9]
identifier      {letter}{letterOrNumber}*
comment		[^*/]


%%

"/*"{comment}*"*/"		{ printf("COMMENT "); }

"if"            		{ printf("IF "); }
"else"          		{ printf("ELSE "); }
"while"         		{ printf("WHILE "); }
"return"        		{ printf("RETURN "); }
"int"           		{ printf("INT "); }
"void"          		{ printf("VOID "); }
"+"             		{ printf("MAIS "); }
"-"             		{ printf("MENOS "); }
"*"             		{ printf("VEZES "); }
"/"             		{ printf("DIVISAO "); }
"="             		{ printf("ATRIBUICAO "); }
"<"             		{ printf("MENOR "); }
"<="            		{ printf("MENORIGUAL "); }
">"             		{ printf("MAIOR "); }
">="            		{ printf("MAIORIGUAL "); }
"=="            		{ printf("IGUAL "); }
"!="            		{ printf("DIFERENTE "); }
";"             		{ printf("SEMI "); }
","             		{ printf("COMMA "); }
"("             		{ printf("LPAREN "); }
")"             		{ printf("RPAREN "); }
"["             		{ printf("LBRACKET "); }
"]"             		{ printf("RBRACKET "); }
"{"             		{ printf("LKEY "); }
"}"             		{ printf("RKEY "); }
		
{number}        		{ printf("NUM "); }
{identifier}    		{ printf("ID "); }
{whitespace}    		{ /* skip whitespace */ }
		
.               		{ printf("ERROR "); }

%%

int yywrap();

int main(void){
	yylex();
	return 0;

}

int yywrap(){
	return 1;
}
