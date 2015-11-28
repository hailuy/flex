

%%

"."	{ printf("\tnew line\n"); }
","     { printf("\tspace\t"); }
"BEGIN"	{ printf("FOUND BEGIN"); }
"END"	{ printf("FOUND END"); }
"S+"	{ printf("FOUND DATETYPE,SIZE OF" + yyleng); }
"READ"	{ printf("FOUND READ"); }
"MOVE\w+TO\w+"	{ printf("FOUND MOVE"); }
"READ\w+TO\w+"	{ printf("FOUND READ"); }
"PRINT\w+"	{ printf("FOUND PRINT"); }
"[X|Y|Z]"	{ printf("FOUND ID" + yytext); }
""\w+""	{ printf("SENTENCE" + yytext); }

%%


main(){
	yylex();
}

int yywrap(){return 1;}
