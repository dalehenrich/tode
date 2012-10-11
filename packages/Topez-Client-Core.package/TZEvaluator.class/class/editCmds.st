command definition
editCmds
    "TZGsEvaluator initialize.
	TZNativeEvaluator initialize"

    commands
        at: 'edit'
        put: [ :evaluator :topez :tokens | 
            tokens size = 1
                ifTrue: [ 
                    | method |
                    method := (evaluator stack at: evaluator currentFrameIndex) method.
                    topez
                        editCode: (topez sourceForMethod: method)
                        inClass: evaluator status currentClass
                        label: 'Method'
                        inWindow: nil ]
                ifFalse: [ 
                    | sub selector block theTokens windowId |
                    theTokens := tokens.
                    windowId := nil.
                    (tokens at: 2) isAllDigits
                        ifTrue: [ 
                            windowId := (tokens at: 2) asNumber.
                            theTokens := tokens copyWithoutIndex: 2 ].
                    ((tokens at: 2) beginsWith: '#')
                        ifTrue: [ 
                            windowId := topez windowIdNamed: ((tokens at: 2) copyWithout: $#) asSymbol.
                            theTokens := tokens copyWithoutIndex: 2 ].
                    theTokens size = 1
                        ifTrue: [ 
                            topez activateWindow: windowId.
                            '' ]
                        ifFalse: [ 
                            sub := (selector := theTokens at: 2) asSymbol.
                            block := (subCommands at: #'edit') at: sub ifAbsent: [  ].
                            block == nil
                                ifTrue: [ 
                                    ((subCommands at: #'edit') at: #'method:')
                                        value: evaluator
                                        value: topez
                                        value:
                                            {'list'.
                                            'method:'.
                                            selector}
                                        value: windowId ]
                                ifFalse: [ 
                                    block
                                        value: evaluator
                                        value: topez
                                        value: theTokens
                                        value: windowId ] ] ] ].
    subCommands
        at: #'edit'
        put:
            (Dictionary new
                at: #'script'
                    put: [ :evaluator :topez :tokens :windowId | 
                            | text type id |
                            text := (self scripts at: (type := (tokens at: 3) asSymbol)) at: (tokens at: 4) asSymbol.
                            id := windowId == nil
                                ifTrue: [ windowId ]
                                ifFalse: [ topez windowIdNamed: #'script' ].
                            type == #'input'
                                ifTrue: [ topez editText: text label: 'Script' inWindow: id ]
                                ifFalse: [ 
                                    topez
                                        editCode: text
                                        inClass: nil
                                        label: 'Script'
                                        inWindow: id ] ];
                at: #'class'
                    put: [ :evaluator :topez :tokens :windowId | 
                            | id |
                            id := windowId == nil
                                ifTrue: [ windowId ]
                                ifFalse: [ topez windowIdNamed: #'class' ].
                            topez
                                editCode: (topez classDefinition: topez currentClass)
                                inClass: topez currentClass
                                label: 'Class'
                                inWindow: id ];
                at: #'prclasses'
                    put: [ :evaluator :topez :tokens :windowId | 
                            | list id |
                            id := windowId == nil
                                ifTrue: [ windowId ]
                                ifFalse: [ topez windowIdNamed: #'classes' ].
                            list := ((subCommands at: #'list') at: #'prclasses')
                                value: evaluator
                                value: topez
                                value: tokens.
                            topez editList: list label: 'Project Classes' inWindow: id ];
                at: #'method:'
                    put: [ :evaluator :topez :tokens :windowId | 
                            | source id |
                            source := ((subCommands at: #'list') at: #'method:')
                                value: evaluator
                                value: topez
                                value: tokens.
                            id := windowId == nil
                                ifTrue: [ windowId ]
                                ifFalse: [ topez windowIdNamed: #'method' ].
                            topez
                                editCode: source
                                inClass: topez currentClass
                                label: 'Method'
                                inWindow: id ];
                at: #'classmethod:'
                    put: [ :evaluator :topez :tokens :windowId | 
                            | source id |
                            source := ((subCommands at: #'list') at: #'classmethod:')
                                value: evaluator
                                value: topez
                                value: tokens.
                            id := windowId == nil
                                ifTrue: [ windowId ]
                                ifFalse: [ topez windowIdNamed: #'method' ].
                            topez
                                editCode: source
                                inClass: evaluator status currentClass
                                label: 'Method'
                                inWindow: id ];
                at: #'selectors'
                    put: [ :evaluator :topez :tokens :windowId | 
                            | id |
                            id := windowId == nil
                                ifTrue: [ windowId ]
                                ifFalse: [ topez windowIdNamed: #'selectors' ].
                            topez
                                editList: (topez instanceSelectors: evaluator status currentClass)
                                label: 'Selectors'
                                inWindow: id ];
                at: #'cselectors'
                    put: [ :evaluator :topez :tokens :windowId | 
                            | id |
                            id := windowId == nil
                                ifTrue: [ windowId ]
                                ifFalse: [ topez windowIdNamed: #'selectors' ].
                            topez
                                editList: (topez classSelectors: evaluator status currentClass)
                                label: 'Class Selectors'
                                inWindow: id ];
                yourself)