%{
%}
%%

[ \t\n\r]+ 	/* ignore whitespace */;
"^" |
V |
"<=>" |
"=>"	{printf("%s: is a connector\n", yytext);
}
∀ |
∃	{printf("%s: is an cuantifier\n", yytext) ;
}

p |
q |
r |
t	{printf("%s: is a arithmetic identifier\n",yytext);
}

x |
y |
z	{printf("%s: is a algebraic identifier\n", yytext);
}

"+" |
"-" |
"*" |
"/"	{printf("%s: is a mathematic operator\n", yytext);
}


[0-9]	{printf("%s: in a number\n", yytext);
}
"<" |
">" |
"==" |
"~=" |
"<=" |
">="	{printf("%s: in a rational operator\n", yytext);
}



[a-zA-Z]+ {
	printf("%s: don't recognize, might be a noun\n", yytext);
	}

.|\n	{ECHO; /* normal default anyway */}

%%

main(){
yylex();
}
