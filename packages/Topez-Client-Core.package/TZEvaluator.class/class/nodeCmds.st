command definition
nodeCmds
    "TZGsEvaluator initialize.
	TZNativeEvaluator initialize"

    commands
        at: 'cd'
            put: [ :evaluator :topez :tokens | 
                    tokens size = 1
                        ifTrue: [ topez setCurrentNode: (topez lookup: '/home') ]
                        ifFalse: [ 
                            | node |
                            node := topez lookup: (tokens at: 2).
                            node canEnter
                                ifFalse: [ self error: 'Cannot cd into node: ' , (tokens at: 2) printString ].
                            topez setCurrentNode: node ] ];
        at: 'pwd' put: [ :evaluator :topez :tokens | topez currentNode ];
        at: 'cat'
            put: [ :evaluator :topez :tokens | 
                    tokens size = 1
                        ifTrue: [ topez currentNode cat ]
                        ifFalse: [ (topez lookup: (tokens at: 2)) cat ] ];
        at: 'ls'
            put: [ :evaluator :topez :tokens | 
                    tokens size = 1
                        ifTrue: [ topez currentNode listContents ]
                        ifFalse: [ (topez lookup: (tokens at: 2)) listContents ] ];
        yourself