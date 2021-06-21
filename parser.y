/* scanner for a toy Pascal-like language */

%{
/* need this for the call to atof() below */
#include <stdio.h>
int yylex();
int yyerror(char *s);

%}
%nonassoc functions                                      
%right ','
%left AND OR
%right NOT 

%token STRING ALOHOMORA ABERTO FOCUS GEMINIO GIRATIEMPO FINITE EXAMINO APARECIUM REDITUS AVADAKEDAVRA SALTUS IF ELSE END 
%token COMMENT OPENCURL CLOSECURL OPENBRACKET CLOSEBRACKET OPENPARENT CLOSEPARENT COMMA SEMICOLON COLON DOT
%token TRUE FALSE
%token TYPECHAR TYPESTRING TYPEINT TYPEFLOAT TYPEBOOLEAN DOUBLE POINTER EBUBLIO IN BOOL
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

main: funaberto
 | funrecursive funaberto
 ;
expresion: statement
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
 | NOT BOOLs
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
 | data
 ;							

 ;
declaration: type WORD
 ;

declarationList: declaration ',' declaration
 ;
 
ifstatement: IF OPENPARENT bool CLOSEPARENT expresion END
 | IF OPENPARENT bool CLOSEPARENT expresion ELSE expresion END
 | IF OPENPARENT bool CLOSEPARENT expresion ifstatement ELSE expresion END
 ;

forstatement: FOCUS WORD IN OPENBRACKET arraydata CLOSEBRACKET expresion END
 | FOCUS WORD IN WORD expresion END
 ;
whilestatement: GIRATIEMPO booleanexpression expresion END 
 ;

arraydata: /* Nothing */
 | data
 | data ',' arraydata
 ;
data: INT
 | FLOAT
 | DOUBLE
 | STRING
 | bool
 ;
bool: TRUE
 | FALSE
 ;
type: TYPEINT
 | TYPECHAR
 | TYPEFLOAT
 | DOUBLE
 | TYPEBOOLEAN
 ;

funaberto: type ABERTO OPENPARENT declarationList CLOSEPARENT expresion returnexpresion END
 ;
function: type ALOHOMORA WORD OPENPARENT declarationList CLOSEPARENT expresion returnexpresion END
 ;
funrecursive: function 
 | function funrecursive
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
