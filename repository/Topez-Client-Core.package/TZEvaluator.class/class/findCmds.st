command definition
findCmds
    "TZGsEvaluator initialize.
	TZNativeEvaluator initialize"

    commands
        at: 'find'
            put: [ :evaluator :topez :tokens | 
                    | sub block |
                    sub := (tokens at: 2) asSymbol.
                    block := (subCommands at: #'find') at: sub.
                    block value: evaluator value: topez value: tokens ];
        yourself.
    subCommands
        at: #'find'
        put:
            (Dictionary new
                at: #'class'
                    put: [ :evaluator :topez :tokens | 
                            topez selectClass: (tokens at: 3).
                            '' ];
                yourself)