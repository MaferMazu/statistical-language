/* scanner for a toy Pascal-like language */

%{
/* need this for the call to atof() below */
#include <math.h>
%}

DIGIT    [0-9]
ID	    [a-z][a-z0-9]*
%%

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


"True"  {printf("TRUE ");}
"False" {printf("FALSE ");}

"char"          {printf("TCHAR ");}
"string"        {printf("TSTRING ");}
"int"           {printf("TINT ");}
"float"         {printf("TFLOAT ");}
"double"        {printf("DOUBLE ");}
"pointer"       {printf("POINTER ");}
"ebublio"       {printf("EBUBLIO ");}


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


%%

int main(int argc, char** argv )
{
    yyin = fopen( "t1.txt", "r" );
    yylex();
    return(0);
}
