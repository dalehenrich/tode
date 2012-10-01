commands
runCmd: commands
    "self initialize"

    commands
        at: 'run'
        put: [ :evaluator :topez :tokens | 
            evaluator
                accumulateTextAndDo: [ :doitStream | 
                    evaluator exception: nil.
                    topez run: doitStream contents ].
            '' ]