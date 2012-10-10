command definition
runCmds
    "TZGsEvaluator initialize.
	TZNativeEvaluator initialize"

    commands
        at: 'run'
            put: [ :evaluator :topez :tokens | 
                    evaluator
                        accumulateTextAndDo: [ :doitStream | 
                            evaluator exception: nil.
                            topez run: doitStream contents ].
                    '' ];
        at: 'topez'
            put: [ :evaluator :topez :tokens | 
                    evaluator accumulateTextAndDo: [ :doitStream | Compiler evaluate: doitStream contents for: topez logged: false ].
                    '' ];
        at: 'exit' put: [ :evaluator :topez :tokens | evaluator exit ]