%{
%}
%%
[ \t\n\r]+ 	/* ignore whitespace */;


";"                  {printf("%s: semicolon  \n", yytext) ;
}
":="                  {printf("%s: becomes simbol \n", yytext) ;
}
":"                  {printf("%s: such that simbol \n", yytext) ;
}
"("                  {printf("%s: left parentheses simbol \n", yytext) ;
}
")"                  {printf("%s: right parentheses simbol \n", yytext) ;
}
"["                  {printf("%s: left bracket simbol \n", yytext) ;
}
"]"                  {printf("%s: right bracket simbol \n", yytext) ;
}
"!" |
"¬"                 {printf("%s: negation simbol \n", yytext) ;
}

"^" |
"v" |
"<=>" |
"=>"	{printf("%s: is a connector\n", yytext);
}

∀ |
"∃!" |
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


[-][0-9]{1,5} |
[0-9]{1,5}	{printf("%s: is a number\n", yytext);
}

\+?[0-9]*\.[0-9]+                  {printf("%s: rational number\n", yytext) ;
}

\+?[-][0-9]*\.[0-9]+                  {printf("%s: negative rational number\n", yytext) ;
}

"<" |
">" |
"==" |
"~=" |
"<=" |
">="	{printf("%s: is a rational operator\n", yytext);
}


[0-9]{6,}	{printf("%s: invalid number (to long )\n", yytext);
}

[a-zA-Z]+ {
	printf("%s: don't recognize, might be a variable\n", yytext);
	}

.|\n	{ECHO; /* normal default anyway */}

%%

main(){
yylex();
}
