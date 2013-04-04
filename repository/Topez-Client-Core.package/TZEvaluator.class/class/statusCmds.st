command definition
statusCmds
    "TZGsEvaluator initialize.
	TZNativeEvaluator initialize"

    commands
        at: 'level'
            put: [ :evaluator :topez :tokens | 
                    topez level: (tokens at: 2) asNumber.
                    '' ];
        at: 'set'
            put: [ :evaluator :topez :tokens | 
                    | sub block |
                    sub := (tokens at: 2) asSymbol.
                    block := (subCommands at: #'set') at: sub.
                    block value: evaluator value: topez value: tokens ];
        yourself.
    subCommands
        at: #'set'
        put:
            (Dictionary new
                at: #'category'
                    put: [ :evaluator :topez :tokens | 
                            tokens size = 3
                                ifTrue: [ 
                                    topez setCategory: (tokens at: 3).
                                    '' ]
                                ifFalse: [ topez currentCategory ] ];
                at: #'class'
                    put: [ :evaluator :topez :tokens | 
                            tokens size = 3
                                ifTrue: [ 
                                    topez setClass: (tokens at: 3).
                                    '' ]
                                ifFalse: [ topez currentClass ] ];
                at: #'project'
                    put: [ :evaluator :topez :tokens | 
                            tokens size = 3
                                ifTrue: [ 
                                    topez setProject: (topez metacelloProjectNamed: (tokens at: 3)).
                                    '' ]
                                ifFalse: [ topez send: 'name' to: topez currentProject withArgs: #() ] ];
                at: #'package'
                    put: [ :evaluator :topez :tokens | 
                            tokens size = 3
                                ifTrue: [ 
                                    topez setPackage: (tokens at: 3).
                                    '' ]
                                ifFalse: [ topez currentPackage ] ];
                yourself)