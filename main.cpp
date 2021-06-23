#include <FlexLexer.h>
#include <iostream>
#include <fstream>

using namespace std;

int main(int argc, char *argv[]){
	ifstream in(argv[1]); //una entrada fija
	yyFlexLexer* lexer = new yyFlexLexer(&in);
	while(lexer->yylex() != 0)
	return 0;
}
