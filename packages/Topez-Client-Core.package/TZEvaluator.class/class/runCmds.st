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
                        ifFalse: [ topez run: ((self scripts at: 'run') at: (tokens at: 2)) ] ];
        at: 'instance'
            put: [ :evaluator :topez :tokens | 
                    evaluator accumulateTextAndDo: [ :doitStream | topez runInInstance: doitStream contents ].
                    '' ];
        at: 'topez'
            put: [ :evaluator :topez :tokens | 
                    tokens size = 1
                        ifTrue: [ 
                            evaluator accumulateTextAndDo: [ :doitStream | topez runInTopez: doitStream contents ].
                            '' ]
                        ifFalse: [ topez runInTopez: ((self scripts at: 'topez') at: (tokens at: 2)) ] ];
        at: 'input'
            put: [ :evaluator :topez :tokens | 
                    tokens size = 1
                        ifTrue: [ 
                            self error: 'must provide an input source'.
                            '' ]
                        ifFalse: [ evaluator evaluate: ((self scripts at: 'input') at: (tokens at: 2)) ] ];
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