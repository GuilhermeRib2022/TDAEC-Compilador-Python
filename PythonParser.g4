parser grammar PythonParse;
//https://github.com/GuilhermeRib2022/TDAEC-Compilador-Python
numero
    : INT
    | FLOAT
    ;
    
identificador
    : ID
    ;

//CODIGO

code
    : (stat|func|func_call|conditional)*EOF
    ;
    
stat
    :(atribuicao|expr|query|conditional)(';')?;
    
//ATRIBUICAO
    
atribuicao
    : identificador '='(identificador|numero|query|expr)
    ;

//EXPRESSOES

expr
    : identificador
    | numero
    | expr (OPERACAO|OP_REL|OP_BOOL) expr
    | '(' expr ')'
	| func_call
    ;
    
//QUERYS

query
    : 'True' 
    | 'False'
    | query OP_BOOL query
    | '(' query ')'
    | query OP_REL query
    | expr OP_REL expr
    | expr OP_REL query
    | query OP_REL expr
    | NOT query
    ;

//IFS

conditional
    :'if' query ':' (stat*) ('elif' query ':' stat*)* ('else' ':' stat*)?
    ;

//FUNÇOES

func
    : 'def' identificador '(' parametros? ')' ':' funccode
    ;
    
funccode
    :  (stat)* ('return' expr)
    ;

parametros
    : param (',' param)*
    ;

param
    : identificador (':' TYPE)? ('=' expr)?
    ;
    
func_call
    : identificador '(' (expr (',' expr)*)? ')'
    ;
