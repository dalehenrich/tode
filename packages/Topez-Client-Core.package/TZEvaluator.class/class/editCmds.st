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
                at: #'class'
                    put: [ :evaluator :topez :tokens :windowId | 
                            topez
                                editCode: (topez classDefinition: evaluator status currentClass)
                                inClass: evaluator status currentClass
                                label: 'Class'
                                inWindow: windowId ];
                at: #'prclasses'
                    put: [ :evaluator :topez :tokens :windowId | 
                            | list |
                            list := ((subCommands at: #'list') at: #'prclasses')
                                value: evaluator
                                value: topez
                                value: tokens.
                            topez editList: list label: 'Project Classes' inWindow: windowId ];
                at: #'method:'
                    put: [ :evaluator :topez :tokens :windowId | 
                            | source |
                            source := ((subCommands at: #'list') at: #'method:')
                                value: evaluator
                                value: topez
                                value: tokens.
                            topez
                                editCode: source
                                inClass: topez currentClass
                                label: 'Method'
                                inWindow: windowId ];
                at: #'classmethod:'
                    put: [ :evaluator :topez :tokens :windowId | 
                            | source |
                            source := ((subCommands at: #'list') at: #'classmethod:')
                                value: evaluator
                                value: topez
                                value: tokens.
                            topez
                                editCode: source
                                inClass: evaluator status currentClass
                                label: 'Method'
                                inWindow: windowId ];
                at: #'selectors'
                    put: [ :evaluator :topez :tokens :windowId | topez editList: (topez instanceSelectors: evaluator status currentClass) label: 'Selectors' inWindow: windowId ];
                at: #'cselectors'
                    put: [ :evaluator :topez :tokens :windowId | topez editList: (topez classSelectors: evaluator status currentClass) label: 'Class Selectors' inWindow: windowId ];
                yourself)