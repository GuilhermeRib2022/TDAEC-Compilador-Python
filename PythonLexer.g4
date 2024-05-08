lexer grammar ExprLexer;

// MINI COMPILADOR PYTHON

//Simbolos
OPERACAO:'+'|'-'|'/'|'*'|'**';
VIRGULA: ',';
PONTOEVIRGULA: ';';
PONTO:'.';
IGUAL:'=';
DOISPONTOS:':';

//Palavras chave
OP_BOOL: 'and' | 'or';
NOT: 'not';

IF: 'if';
ELSE: 'else';
ELIF: 'elif';
WHILE: 'while';
FOR: 'for';
RETURN: 'return';
CLASS: 'class';
TRY: 'try'; 
EXCEPT: 'except';
TRUE: 'True';
FALSE: 'False';

//Tipo de dados
INT: [0-9]+ ;
FLOAT: INT?'.'INT*;

//Operadores relacionais:
OP_REL: '==' | '!=' | '<' | '>'|'<='|'>=';
PARENTISED: '(';
PARENTISEE: ')';
CHAVETAD: '{';
CHAVETAE: '}';
ASPAS:'"';

//Estrutura básica:
ID: [a-zA-Z_][a-zA-Z_0-9]*;
WS: [ \t\n\r\f]+ -> skip ;