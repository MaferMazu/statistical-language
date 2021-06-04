/* MAGICSCRIPT */

%{
/* need this for the call to atof() below */
#include <math.h>

%}

%option yylineno

DIGIT    [0-9]
ID	 [a-z][a-z0-9]*
STRING   \"([^\"])*\"{1} 
%%
{STRING}        {printf("STRING(%s) ", yytext);}
"alohomora"     {printf("ALOHOMORA ");}
"aberto"        {printf("ABERTO ");}
"focus"         {printf("FOCUS ");}
"geminio"       {printf("GEMINIO ");}
"giratiempo"    {printf("GIRATIEMPO ");}
"finite"        {printf("FINITE ");}
"examino"       {printf("EXAMINO ");}
"aparecium"     {printf("APARECIUM ");}
"reditus"       {printf("REDITUS ");}
"avadakedavra"  {printf("AVADAKEDAVRA ");}
"saltus"        {printf("SALTUS ");}

"if"            {printf("IF ");}
"else"          {printf("ELSE ");}
"end"           {printf("END ");}

\/\/    {printf("COMMENT ");}
\{      {printf("OPENCURL ");}
\}      {printf("CLOSECURL ");}
\[      {printf("OPENBRACKET ");}
\]      {printf("CLOSEBRACKET ");}
\(      {printf("OPENPARENT ");}
\)      {printf("CLOSEPARENT ");}
\,      {printf("COMMA ");}
\;      {printf("SEMICOLON ");}
\:      {printf("COLON ");}
\.      {printf("DOT ");}


"True"  {printf("TRUE ");}
"False" {printf("FALSE ");}

"char"          {printf("TYPECHAR ");}
"string"        {printf("TYPESTRING ");}
"int"           {printf("TYPEINT ");}
"float"         {printf("TYPEFLOAT ");}
"double"        {printf("DOUBLE ");}
"pointer"       {printf("POINTER ");}
"ebublio"       {printf("EBUBLIO ");}

\+\+    {printf("AUTOPLUS ");}
\-\-    {printf("AUTOMINUS ");}
\+      {printf("PLUS ");}
\-      {printf("MINUS ");}
\*      {printf("MULT ");}
\*\*    {printf("POW ");}
\/      {printf("DIV ");}
"mod"   {printf("MOD ");}

\&      {printf("ANDPERSEAND ");}

"not"   {printf("NOT ");}
"and"   {printf("AND ");}
"or"    {printf("OR ");}
\<\=    {printf("GREATEREQUAL ");}
\>\=    {printf("LESSEQUAL ");}
\<      {printf("GREATER ");}
\>      {printf("LESS ");}
==      {printf("EQUALTO ");}
!=      {printf("DIFFERENTTO ");}
=       {printf("EQUAL ");}

\t	{printf("\t");}
\n      {printf("\n");}
" "	{printf(" ");}


{DIGIT}.{DIGIT}         {printf("FLOAT(%d) ", atoi(yytext));}
{DIGIT}                 {printf("INT(%d) ", atoi(yytext));}
{ID}                    {printf("WORD(%s) ", yytext);}

.       {printf("INVALIDTOKEN(%s) ", yytext);}
%%

int main(int argc, char** argv )
{
        char *file;
        if (argc > 1){
                file = argv[1];
        }
                
        else {
                file = "t1.ms";
        }
                
        yyin = fopen( file, "r" );
        yylex();
        return(0);
}
