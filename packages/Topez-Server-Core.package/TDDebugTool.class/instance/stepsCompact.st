as yet unclassified
stepsCompact
    "steps <class>[ class]>><selector>"

    [ 
    | selector cls meth stepSource statement |
    tokens size < 3
        ifTrue: [ 
            statement := (tokens at: 2) findTokens: '>>'.
            cls := Smalltalk at: (statement at: 1) asSymbol.
            selector := statement at: 2 ]
        ifFalse: [ 
            cls := (Smalltalk at: (tokens at: 2) asSymbol) class.
            statement := (tokens at: 3) findTokens: '>>'.
            selector := statement at: 2 ].
    meth := cls compiledMethodAt: selector asSymbol.
    stepSource := self stepsForMethod: meth.
    stepSource edit: topez windowId: nil ]
        on: Error
        do: [ :ex | 
            ^ self
                error:
                    'Missing ''>>''. Steps command should be of form: ' , 'db steps <class> [class] >> <selector>' printString , ' OR '
                        , 'db steps <class>[ class]>><selector>' printString ]