lexer grammar ExprLexer;

// MINI COMPILADOR PYTHON

//Simbolos
OPERACAO:'+'|'-'|'/'|'*'|'**';
VIRGULA: ',';
PONTOEVIRGULA: ';';
PONTO:'.';
IGUAL:'=';
DOISPONTOS:':';
PARENTISED: '(';
PARENTISEE: ')';
CHAVETAD: '{';
CHAVETAE: '}';
ASPAS:'"';

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
DEFINE: 'def';

//Operadores relacionais:
OP_REL: '==' | '!=' | '<' | '>'|'<='|'>=';


//Estrutura básica:
INT: [0-9]+ ;
FLOAT: INT?'.'INT*;
ID: [a-zA-Z_][a-zA-Z_0-9]*;
WS: [ \t\n\r\f]+ -> skip ;
