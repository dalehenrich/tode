parse
parseUnary
    | unary type |
    [ self isName ]
        whileTrue: [ 
            unary := currentToken.
            type := #'unary'.
            self scanPast: type ]