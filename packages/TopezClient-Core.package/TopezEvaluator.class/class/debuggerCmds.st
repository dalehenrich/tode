commands
debuggerCmds
    "self initialize"

    Commands
        at: 'continue'
            put: [ :evaluator :topez :tokens | 
                    | context |
                    context := evaluator context.
                    evaluator exception: nil.
                    topez continueWith: context ];
        at: 'step'
            put: [ :evaluator :topez :tokens | 
                    | sub |
                    sub := tokens size = 1
                        ifTrue: [ #'over' ]
                        ifFalse: [ (tokens at: 2) asSymbol ].
                    ((SubCommands at: #'step') at: sub) value: evaluator value: topez value: tokens ];
        at: 'down' put: [ :evaluator :topez :tokens | evaluator decrementCurrentFrame ];
        at: 'up' put: [ :evaluator :topez :tokens | evaluator incrementCurrentFrame ];
        at: 'where' put: [ :evaluator :topez :tokens | evaluator stack ].
    SubCommands
        at: #'step'
        put:
            (Dictionary new
                at: #'over'
                    put: [ :evaluator :topez :tokens | 
                            | context |
                            context := evaluator context.
                            evaluator exception: nil.
                            topez stepWith: context level: evaluator currentFrameIndex ];
                at: #'into'
                    put: [ :evaluator :topez :tokens | 
                            | context |
                            context := evaluator context.
                            evaluator exception: nil.
                            topez stepInto: context ];
                yourself)