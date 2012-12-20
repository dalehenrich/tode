as yet unclassified
lookupMethodInCompact: methodTokens
    "<class>[ class]>><selector>"

    | selector cls meth stepSource statement |
    methodTokens size < 2
        ifTrue: [ 
            statement := (methodTokens at: 1) findTokens: '>>'.
            cls := Smalltalk at: (statement at: 1) asSymbol.
            selector := statement at: 2 ]
        ifFalse: [ 
            cls := (Smalltalk at: (methodTokens at: 1) asSymbol) class.
            statement := (methodTokens at: 2) findTokens: '>>'.
            selector := statement at: 2 ].
    ^ cls compiledMethodAt: selector asSymbol