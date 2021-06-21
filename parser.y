/* scanner for a toy Pascal-like language */

%{
/* need this for the call to atof() below */
#include <stdio.h>
int yylex();
int yyerror(char *s);

%}

%right ','
%left AND OR
%right NOT 

%token STRING ALOHOMORA ABERTO FOCUS GEMINIO GIRATIEMPO FINITE EXAMINO APARECIUM REDITUS AVADAKEDAVRA SALTUS IF ELSE END 
%token COMMENT OPENCURL CLOSECURL OPENBRACKET CLOSEBRACKET OPENPARENT CLOSEPARENT COMMA SEMICOLON COLON DOT
%token TRUE FALSE
%token TYPECHAR TYPESTRING TYPEINT TYPEFLOAT DOUBLE BOOL POINTER EBUBLIO IN
%token AUTOPLUS AUTOMINUS PLUS MINUS MULT POW DIV MOD ANDPERSEAND NOT AND OR GREATEREQUAL LESSEQUAL GREATER LESS EQUALTO
%token DIFFERENTTO EQUAL FLOAT INT WORD INVALIDTOKEN

%type <strng> STRING 
%type <number> INT
%type <numberf> FLOAT

%union{
    char strng[40];
    int number;
    float numberf;
}


%%

expresion: statement
 | exp
 | returnexpresion
 | booleanexpression
 | expresion expresion
 ;
returnexpresion: FINITE
 | FINITE data
 | FINITE expresion
 ;
booleanexpression: BOOL OR BOOL
 | BOOL AND BOOL
 | NOT BOOL
 | boolcombined
 ;
boolcombined: booleanexpression OR booleanexpression
 | booleanexpression AND booleanexpression
 ;
statement: declaration '=' exp
 | declarationList '=' exp
 | ifstatement
 | forstatement
 | whilestatement
 ;

exp: data PLUS data
 | data MINUS data
 | data MULT data
 | data POW data
 | data DIV data
 | data MOD data
 ;							

declaration: type WORD
 ;

declarationList: declaration ',' declaration
 ;
 
ifstatement: IF OPENPARENT BOOL CLOSEPARENT expresion END
 | IF OPENPARENT BOOL CLOSEPARENT expresion ELSE expresion END
 | IF OPENPARENT BOOL CLOSEPARENT expresion ifstatement ELSE expresion END
 ;

forstatement: FOCUS WORD IN OPENBRACKET arraydata CLOSEBRACKET expresion END
 | FOCUS WORD IN WORD expresion END
 ;
whilestatement: GIRATIEMPO booleanexpression expresion END 
 ;

arraydata: /* Nothing */
 | data
 |data ',' arraydata
 ;
data: INT
 | FLOAT
 | DOUBLE
 | STRING
 ;
type: TYPEINT
 | TYPECHAR
 | TYPEFLOAT
 | DOUBLE
 | BOOL
 ;
%%
main(int argc, char **argv)
{
 yyparse();
}
yyerror(char *s)
{
 fprintf(stderr, "error: %s\n", s);
}