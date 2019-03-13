

/*
Here you can do your imports and codes that need to be added out side of your Scanner Class
*/

class Symbol{
    public String what;
    Symbol(String what){
        this.what = what;
    }
}

%%

%class MyScanner
%unicode

%line
%column
%public

%{
    char myVar;
%}

%init{
//    Here you write the code that you want to include in your constructor
%init}

%function myScanFunction

ALPHA=[A-Za-z]
DIGIT=[0-9]
Ident = {ALPHA}({ALPHA}|{DIGIT}|_)*
%type Symbol
// you could also use %type "type" for your beautiful custom classes :D

%%


<YYINITIAL>{

{Ident} { return new Symbol(yytext()); }
.     { return new Symbol(yytext()); }
}



