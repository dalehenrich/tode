command definition
debuggerCmds
    "TZGemStoneEvaluator initialize.
	TZNativeEvaluator initialize"

    commands
        at: 'frame'
            put: [ :evaluator :topez :tokens | 
                    | context |
                    tokens size >= 2
                        ifTrue: [ evaluator currentFrameIndex: (tokens at: 2) asNumber ].	"I want to display a lot more when we do the frame command"
                    evaluator exception stack at: evaluator currentFrameIndex ];
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
                    ((subCommands at: #'step') at: sub) value: evaluator value: topez value: tokens ];
        at: 'down' put: [ :evaluator :topez :tokens | evaluator decrementCurrentFrame ];
        at: 'up' put: [ :evaluator :topez :tokens | evaluator incrementCurrentFrame ];
        at: 'where' put: [ :evaluator :topez :tokens | evaluator stack ].
    subCommands
        at: #'step'
        put:
            (Dictionary new
                at: #'over'
                    put: [ :evaluator :topez :tokens | 
                            | frameIndex context |
                            frameIndex := evaluator currentFrameIndex.
                            context := evaluator context.
                            evaluator exception: nil.
                            topez stepWith: context level: frameIndex ];
                at: #'into'
                    put: [ :evaluator :topez :tokens | 
                            | context |
                            context := evaluator context.
                            evaluator exception: nil.
                            topez stepInto: context ];
                yourself)