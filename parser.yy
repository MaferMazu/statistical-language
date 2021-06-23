/* scanner for a toy Pascal-like language */

%{
/* need this for the call to atof() below */
#include <stdio.h>
extern int yylex();
int yyerror(char *s);

%}
%language "c++"

%right EQUAL GREATEREQUAL LESSEQUAL GREATER LESS EQUALTO

%token STRING ALOHOMORA ABERTO FOCUS GEMINIO GIRATIEMPO FINITE EXAMINO APARECIUM REDITUS AVADAKEDAVRA SALTUS IF ELSE END 
%token COMMENT OPENCURL CLOSECURL OPENBRACKET CLOSEBRACKET OPENPARENT CLOSEPARENT COMMA SEMICOLON COLON DOT
%token TRUE FALSE
%token TYPECHAR TYPESTRING TYPEINT TYPEFLOAT DOUBLE BOOL POINTER EBUBLIO 
%token AUTOPLUS AUTOMINUS PLUS MINUS MULT POW DIV MOD ANDPERSEAND NOT AND OR GREATEREQUAL LESSEQUAL GREATER LESS EQUALTO
%token DIFFERENTTO EQUAL FLOAT INT WORD INVALIDTOKEN

%type <strng> STRING 
%type <number> INT
%type <numberf> FLOAT
%type <numberf> DOUBLE

%type <boolean> TRUE
%type <boolean> FALSE
%union{
    char strng[40];
    int number;
    float numberf;
    bool boolean;
}


%%
INICIO: main;

main: funaberto     
 ;
expresion: statement
 | exp
 ;
statement: declaration '=' exp      {printf("ASIGNACION\n");}
 | declarationList '=' exp          {printf("ASIGNACION MULTIPLE\n");}
 ;

declaration: type WORD
 ;

declarationList: ',' declaration
 | declarationList ',' 
 ;
 
exp: data PLUS data     {printf("SUMA\n");}
 | data MINUS data      {printf("RESTA\n");}
 | data MULT data       {printf("MULT\n");}
 | data POW data        {printf("POW\n");}
 | data DIV data        {printf("DIV");}
 | data MOD data        {printf("MOD\n");}
 ;							
data: INT   {printf("INT\n");}
 | FLOAT    {printf("FLOAT\n");}
 | DOUBLE   {printf("DOUBLE\n");}
 ;

type: TYPEINT   
 | TYPECHAR     
 | TYPEFLOAT    
 | DOUBLE   
 ;

funaberto: type ABERTO OPENPARENT declarationList CLOSEPARENT expresion REDITUS END 
 |  type ABERTO OPENPARENT  CLOSEPARENT expresion REDITUS END 
%%

