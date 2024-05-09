parser grammar PythonParse;

numero
    : INT
    | FLOAT
    ;
    
identificador
    : ID
    ;

code
    : (stat|conditional)*EOF
    ;
    
stat
    :(atribuicao|expr|query);
    
atribuicao
    : identificador '='(identificador|numero|query|expr)
    ;
    
expr
    : identificador
    | numero
    | expr (OPERACAO|OP_REL|OP_BOOL) expr
    | '(' expr ')'
    | 'True'
    | 'False'
    ;

query
    : 'True' 
    | 'False'
    | query OP_BOOL query
    | '(' query ')'
    | expr OP_REL expr
    | NOT query
    ;
    
conditional
    :'if' query ':' stat* ('elif' query ':' stat*)* ('else' ':' stat*)?
    ;
