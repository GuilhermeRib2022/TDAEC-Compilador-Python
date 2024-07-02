lexer grammar ExprLexer;

// MINI COMPILADOR PYTHON

// Operadores Aritméticos
OPERACAO:'+'|'-'|'/'|'*'|'**'|'%'|'//';

// Operadores Relacionais
OP_REL: '==' | '!=' | '<' | '>'|'<='|'>=';

// Operadores Booleanos
OP_BOOL: 'and' | 'or';
NOT: 'not';

// Valores Booleanos
TRUE: 'True';
FALSE: 'False';

//Simbolos
IGUAL:'=';
VIRGULA: ',';
PONTOEVIRGULA: ';';
PONTO:'.';
DOISPONTOS:':';

// Identificadora de blocos
IF: 'if';
ELSE: 'else';
ELIF: 'elif';
WHILE: 'while';
FOR: 'for';
RETURN: 'return';
CLASS: 'class';
TRY: 'try'; 
EXCEPT: 'except';
DEFINE: 'def';

//Tipo de dados
TYPE: TYPE_INT|TYPE_FLOAT|TYPE_STR|TYPE_LIST;
TYPE_INT: 'int';
TYPE_FLOAT: 'float';
TYPE_STR: 'str';
TYPE_LIST: 'list';


//parênteses
PARENTISED: '(';
PARENTISEE: ')';
CHAVETAD: '{';
CHAVETAE: '}';
ASPAS:'"';

//Estrutura básica:
INT: [0-9]+ ;
FLOAT: INT?'.'INT*;
ID: [a-zA-Z_][a-zA-Z_0-9]*;
WS: [ \t\n\r\f]+ -> skip ;
