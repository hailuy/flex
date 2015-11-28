

%%

"hello world"	{ printf("hello world!"); }

%%


main(){
	yylex();
}

int yywrap(){return 1;}
