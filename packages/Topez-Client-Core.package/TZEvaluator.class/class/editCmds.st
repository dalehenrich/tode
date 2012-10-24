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
                        inWindow: nil
                        at: 'method' ]
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
                            id := windowId notNil
                                ifTrue: [ windowId ]
                                ifFalse: [ topez windowIdNamed: #'script' ].
                            type == #'input'
                                ifTrue: [ 
                                    topez
                                        editText: text
                                        label: 'Script'
                                        inWindow: id
                                        at: 'method' ]
                                ifFalse: [ 
                                    topez
                                        editCode: text
                                        inClass: nil
                                        label: 'Script'
                                        inWindow: id
                                        at: 'method' ] ];
                at: #'class'
                    put: [ :evaluator :topez :tokens :windowId | 
                            | id list label |
                            id := windowId notNil
                                ifTrue: [ windowId ]
                                ifFalse: [ topez windowIdNamed: #'class' ].
                            list := tokens size = 3
                                ifTrue: [ 
                                    label := tokens at: 3.
                                    topez findMatchingClasses: (tokens at: 3) ]
                                ifFalse: [ 
                                    label := topez currentClass proxyClassName.
                                    {(topez classElementForCurrentClass)} ].
                            list isEmpty
                                ifTrue: [ 'No matching classes found' ]
                                ifFalse: [ 
                                    topez
                                        editList: list
                                        label: label
                                        inWindow: id
                                        at: 'classes'.
                                    '' ] ];
                at: #'superclasses'
                    put: [ :evaluator :topez :tokens :windowId | 
                            | list id |
                            id := windowId notNil
                                ifTrue: [ windowId ]
                                ifFalse: [ topez windowIdNamed: #'superclasses' ].
                            list := ((subCommands at: #'list') at: #'superclasses')
                                value: evaluator
                                value: topez
                                value: tokens.
                            topez
                                editList: list
                                label: 'Superclasses'
                                inWindow: id
                                at: 'superclasses' ];
                at: #'instance'
                    put: [ :evaluator :topez :tokens :windowId | 
                            | list id |
                            id := windowId notNil
                                ifTrue: [ windowId ].
                            list := ((subCommands at: #'list') at: #'instance')
                                value: evaluator
                                value: topez
                                value: tokens.
                            topez
                                editList: list
                                selection: (list at: 1)
                                renderAttribute: #'basic'
                                templateElement: nil
                                label: 'Inspect'
                                inWindow: id
                                at: 'implementors' ];
                at: #'stack'
                    put: [ :evaluator :topez :tokens :windowId | 
                            | list id |
                            id := windowId notNil
                                ifTrue: [ windowId ].
                            list := evaluator stack.
                            topez
                                editList: list
                                selection: (list at: list currentFrameIndex)
                                renderAttribute: #'debugger'
                                templateElement: nil
                                label: evaluator exception proxyPrintString
                                inWindow: id
                                at: 'debugger' ];
                at: #'hierarchy'
                    put: [ :evaluator :topez :tokens :windowId | 
                            | list id |
                            id := windowId notNil
                                ifTrue: [ windowId ]
                                ifFalse: [ topez windowIdNamed: #'hierarchy' ].
                            list := ((subCommands at: #'list') at: #'hierarchy')
                                value: evaluator
                                value: topez
                                value: tokens.
                            topez
                                editList: list
                                label: 'Hierarchy'
                                inWindow: id
                                at: 'superclasses' ];
                at: #'subclasses'
                    put: [ :evaluator :topez :tokens :windowId | 
                            | list id |
                            id := windowId notNil
                                ifTrue: [ windowId ]
                                ifFalse: [ topez windowIdNamed: #'subclasses' ].
                            list := ((subCommands at: #'list') at: #'subclasses')
                                value: evaluator
                                value: topez
                                value: tokens.
                            topez
                                editList: list
                                label: 'Subclasses'
                                inWindow: id
                                at: 'subclasses' ];
                at: #'prclasses'
                    put: [ :evaluator :topez :tokens :windowId | 
                            | list id |
                            id := windowId notNil
                                ifTrue: [ windowId ]
                                ifFalse: [ topez windowIdNamed: #'classes' ].
                            list := ((subCommands at: #'list') at: #'prclasses')
                                value: evaluator
                                value: topez
                                value: tokens.
                            topez
                                editList: list
                                label: 'Project Classes'
                                inWindow: id
                                at: 'classes' ];
                at: #'prtests'
                    put: [ :evaluator :topez :tokens :windowId | 
                            | list id |
                            id := windowId notNil
                                ifTrue: [ windowId ]
                                ifFalse: [ topez windowIdNamed: #'tests' ].
                            list := ((subCommands at: #'list') at: #'prtests')
                                value: evaluator
                                value: topez
                                value: tokens.
                            topez
                                editList: list
                                label: 'Project Tests'
                                inWindow: id
                                at: 'classes' ];
                at: #'method:'
                    put: [ :evaluator :topez :tokens :windowId | 
                            | source id |
                            source := ((subCommands at: #'list') at: #'method:')
                                value: evaluator
                                value: topez
                                value: tokens.
                            id := windowId notNil
                                ifTrue: [ windowId ]
                                ifFalse: [ topez windowIdNamed: #'method' ].
                            topez
                                editCode: source
                                inClass: topez currentClass
                                label: 'Method'
                                inWindow: id
                                at: 'method' ];
                at: #'classmethod:'
                    put: [ :evaluator :topez :tokens :windowId | 
                            | source id |
                            source := ((subCommands at: #'list') at: #'classmethod:')
                                value: evaluator
                                value: topez
                                value: tokens.
                            id := windowId notNil
                                ifTrue: [ windowId ]
                                ifFalse: [ topez windowIdNamed: #'method' ].
                            topez
                                editCode: source
                                inClass: evaluator status currentClass
                                label: 'Method'
                                inWindow: id
                                at: 'method' ];
                at: #'selectors'
                    put: [ :evaluator :topez :tokens :windowId | 
                            | id |
                            id := windowId notNil
                                ifTrue: [ windowId ]
                                ifFalse: [ topez windowIdNamed: #'instanceSelectors' ].
                            topez
                                editInstanceSelectorsFor: evaluator status currentClass
                                inWindow: id
                                at: 'instanceSelectors' ];
                at: #'cselectors'
                    put: [ :evaluator :topez :tokens :windowId | 
                            | id |
                            id := windowId notNil
                                ifTrue: [ windowId ]
                                ifFalse: [ topez windowIdNamed: #'classSelectors' ].
                            topez editClassSelectorsFor: evaluator status currentClass inWindow: id at: 'classSelectors' ];
                at: #'implementors'
                    put: [ :evaluator :topez :tokens :windowId | 
                            | list id |
                            id := windowId notNil
                                ifTrue: [ windowId ].
                            list := ((subCommands at: #'list') at: #'implementors')
                                value: evaluator
                                value: topez
                                value: tokens.
                            topez
                                editList: list
                                label: 'Implementors of ' , (tokens at: 3)
                                inWindow: id
                                at: 'implementors' ];
                at: #'senders'
                    put: [ :evaluator :topez :tokens :windowId | 
                            | list id |
                            id := windowId notNil
                                ifTrue: [ windowId ].
                            list := ((subCommands at: #'list') at: #'senders')
                                value: evaluator
                                value: topez
                                value: tokens.
                            topez
                                editList: list
                                label: 'Senders of ' , (tokens at: 3)
                                inWindow: id
                                at: 'implementors' ];
                at: #'references'
                    put: [ :evaluator :topez :tokens :windowId | 
                            | list id |
                            id := windowId notNil
                                ifTrue: [ windowId ].
                            list := ((subCommands at: #'list') at: #'references')
                                value: evaluator
                                value: topez
                                value: tokens.
                            topez
                                editList: list
                                label: 'References to ' , (tokens at: 3)
                                inWindow: id
                                at: 'implementors' ];
                yourself)