%{
#include <stdio.h>
#include <stdlib.h>
%}

%option c++
%option outfile= "magiclexer.cpp"
%option noyywrap


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
"in"		{printf("IN ");}
\/\/(.)*	{printf("COMMENT ");}
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
"bool"          {printf("TYPEBOOLEAN ");}
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
