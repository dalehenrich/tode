commands
runCmds
    "self initialize"

    Commands
        at: 'run'
            put: [ :evaluator :topez :tokens | 
                    evaluator
                        accumulateTextAndDo: [ :doitStream | 
                            evaluator exception: nil.
                            topez run: doitStream contents ].
                    '' ];
        at: 'exit' put: [ :evaluator :topez :tokens | evaluator exit ]