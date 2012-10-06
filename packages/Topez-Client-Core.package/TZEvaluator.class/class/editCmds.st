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
                    TopezCodeEditor openContents: (topez sourceForMethod: method) inClass: Object label: 'Method'.
                    '' ]
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
                                            selector} ]
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
                            TopezCodeEditor
                                openContents: (topez classDefinition: evaluator status currentClass)
                                inClass: topez currentClass asBehavior
                                label: 'Class'.
                            '' ];
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
                            TopezCodeEditor openContents: source inClass: topez currentClass asBehavior label: 'Method' ];
                at: #'selectors'
                    put: [ :evaluator :topez :tokens :windowId | 
                            TopezListEditor
                                openList:
                                    ((topez classInstanceSelectors: evaluator status currentClass) collect: [ :each | each proxyPrintString ])
                                label: 'Selectors'.
                            '' ];
                yourself)