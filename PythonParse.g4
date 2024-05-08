parser grammar PythonParse;

numero
    : INT
    | FLOAT
    ;
    
identificador
    : ID
    ;

codigo
    : stat*EOF
    ;
    
statement
    :(atribuicao|query|expr|conditional);

atribuicao
    : identificador '='(identificador|numero|query|expr)
    ;

expr
    : numero
    | identificador
    | '(' expr ')'
    | fator((OPERACAO|OP_REL|OP_BOOL) fator)*
    ;

query
    : 'True' 
    | 'False'
    | query OP_BOOL query
    | '(' query ')'
    | expr OP_REL expr
    | NOT query
    ;
    
fator
    : numero
    | identificador
    | '(' expr ')'
    | 'True'
    ;
    
conditional
    :'if' query ':' stat* ('elif' query ':' stat*)* ('else' ':' stat*)?
    ;
