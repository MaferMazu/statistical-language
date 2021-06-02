/* scanner for a toy Pascal-like language */

%{
/* need this for the call to atof() below */
#include <math.h>
%}

DIGIT    [0-9]
BOOL    true|false
FUNCTION    alohomora|aberto
TYPE    int|bool|char|string|float|double|pointer|ebublio
ID	    [a-z][a-z0-9]*
%%
{TYPE}{1}  {
        printf( "TYPE: %s\n", yytext );
        }

if|elif|else|end|in|finite|reditus|saltus|{FUNCTION}	       {
        printf( "TOKEN: %s\n", yytext );
        }
{DIGIT}+    {
        printf( "An integer: %s (%d)\n", yytext,
            atoi( yytext ) );
        }

{DIGIT}+"."{DIGIT}*	      {
        printf( "A float: %s (%g)\n", yytext,
            atof( yytext ) );
        }

{ID}	       {printf( "An identifier: %s\n", yytext );}

"+"|"-"|"*"|"/"|"div"|"mod"   {printf( "Un operador aritmetico: %s\n", yytext );}

"="   {printf( "TOKEN Operador ASIGNACION: %s\n", yytext );}

"&&"|"||"|"!"   {printf( "TOKEN operador BOOLEANO: %s\n", yytext );}

":"   {printf("Transicion: %s\n", yytext);}
"++"   {printf( "Operador autoincremento: %s\n", yytext );}
"--"   {printf( "Operador decremento: %s\n", yytext );}

"//"     {printf( "TOKEN COMENTARIO: %s\n", yytext );}
[ \t\n]+	     /* eat up whitespace */

.	       printf( "TOKEN NO RECONOCIDO: %s\n", yytext );

%%

int main(int argc, char** argv )
{
    yyin = fopen( "t1.txt", "r" );
    yylex();
    return(0);
}
