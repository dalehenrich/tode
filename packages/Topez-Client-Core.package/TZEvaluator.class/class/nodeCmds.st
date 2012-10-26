command definition
nodeCmds
    "TZGsEvaluator initialize.
	TZNativeEvaluator initialize"

    commands
        at: 'cd'
            put: [ :evaluator :topez :tokens | 
                    tokens size = 1
                        ifTrue: [ topez setCurrentNode: (topez lookup: '/home') ]
                        ifFalse: [ topez setCurrentNode: (topez lookup: (tokens at: 2)) ] ];
        at: 'pwd' put: [ :evaluator :topez :tokens | topez currentNode ];
        at: 'ls'
            put: [ :evaluator :topez :tokens | 
                    tokens size = 1
                        ifTrue: [ topez currentNode listContents ]
                        ifFalse: [ (topez lookup: (tokens at: 2)) listContents ] ];
        yourself