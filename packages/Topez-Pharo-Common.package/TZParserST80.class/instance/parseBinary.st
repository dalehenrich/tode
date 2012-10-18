parse
parseBinary
    | binary type |
    self parseUnary.
    [ self isBinary ]
        whileTrue: [ 
            binary := currentToken.
            type := #'binary'.
            self scanPast: type.
            self parseTerm.
            self parseUnary ]