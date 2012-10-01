commands
debuggerCmds: commands
    "self initialize"

    commands
        at: 'continue'
            put: [ :evaluator :topez :tokens | 
                    | context |
                    context := evaluator context.
                    evaluator exception: nil.
                    topez continueWith: context ];
        at: 'step'
            put: [ :evaluator :topez :tokens | 
                    | context |
                    context := evaluator context.
                    evaluator exception: nil.
                    topez stepWith: context level: evaluator currentFrame ];
        at: 'down' put: [ :evaluator :topez :tokens | evaluator decrementCurrentFrame ];
        at: 'up' put: [ :evaluator :topez :tokens | evaluator incrementCurrentFrame ];
        at: 'where' put: [ :evaluator :topez :tokens | evaluator stack ]