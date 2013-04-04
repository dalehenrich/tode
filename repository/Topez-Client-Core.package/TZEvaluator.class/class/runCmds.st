command definition
runCmds
    "TZGsEvaluator initialize.
	TZNativeEvaluator initialize"

    commands
        at: 'run'
            put: [ :evaluator :topez :tokens | 
                    tokens size = 1
                        ifTrue: [ 
                            evaluator
                                accumulateTextAndDo: [ :doitStream | 
                                    evaluator exception: nil.
                                    topez run: doitStream contents ].
                            '' ]
                        ifFalse: [ topez run: (topez lookup: (tokens at: 2)) contents ] ];
        at: 'save'
            put: [ :evaluator :topez :tokens | 
                    | projectNode |
                    projectNode := topez lookup: '/projects/' , (tokens at: 2).
                    evaluator
                        accumulateTextAndDo: [ :doitStream | 
                            evaluator exception: nil.
                            topez
                                saveModifiedPackagesForProjectNamed: projectNode name
                                commitMessage: doitStream contents ].
                    '' ];
        at: 'reload'
            put: [ :evaluator :topez :tokens | 
                    | projectNode |
                    projectNode := topez lookup: '/projects/' , (tokens at: 2).
                    evaluator exception: nil.
                    topez
                        run:
                            'Metacello image
	baseline: #(' , projectNode name printString
                                ,
                                    ');
	silently;
	get.
Metacello image
	baseline: #(' , projectNode name printString
                                ,
                                    ');
	silently;
	load.' ];
        at: 'inspect'
            put: [ :evaluator :topez :tokens | 
                    tokens size = 1
                        ifTrue: [ 
                            evaluator
                                accumulateTextAndDo: [ :doitStream | 
                                    topez runInInstance: doitStream contents.
                                    ((subCommands at: #'edit') at: #'inspect')
                                        value: evaluator
                                        value: topez
                                        value: tokens
                                        value: nil.
                                    topez instance ].
                            '' ]
                        ifFalse: [ 
                            topez runInInstance: (topez lookup: (tokens at: 2)) contents.
                            ((subCommands at: #'edit') at: #'inspect')
                                value: evaluator
                                value: topez
                                value: tokens
                                value: nil.
                            topez instance ] ];
        at: 'topez'
            put: [ :evaluator :topez :tokens | 
                    tokens size = 1
                        ifTrue: [ 
                            evaluator accumulateTextAndDo: [ :doitStream | topez runInTopez: doitStream contents ].
                            '' ]
                        ifFalse: [ topez runInTopez: (topez lookup: (tokens at: 2)) contents ] ];
        at: 'input'
            put: [ :evaluator :topez :tokens | 
                    tokens size = 1
                        ifTrue: [ 
                            self error: 'must provide an input source'.
                            '' ]
                        ifFalse: [ evaluator evaluate: (topez lookup: (tokens at: 2)) contents ] ];
        at: 'exit'
            put: [ :evaluator :topez :tokens | 
                    evaluator exit.
                    '' ];
        at: 'logout'
            put: [ :evaluator :topez :tokens | 
                    evaluator logout.
                    '' ];
        at: 'collapse'
            put: [ :evaluator :topez :tokens | 
                    evaluator collapse.
                    '' ];
        at: 'close'
            put: [ :evaluator :topez :tokens | 
                    evaluator close.
                    '' ];
        at: 'expand'
            put: [ :evaluator :topez :tokens | 
                    evaluator expand.
                    '' ];
        yourself