command definition
nodeCmds
    "TZGsEvaluator initialize.
	TZNativeEvaluator initialize"

    commands
        at: 'cat'
            put: [ :evaluator :topez :tokens | 
                    (tokens size = 1
                        ifTrue: [ topez currentNode ]
                        ifFalse: [ topez lookup: (tokens at: 2) ]) cat ];
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
        at: 'cp'
            put: [ :evaluator :topez :tokens | 
                    | destinationPath |
                    destinationPath := tokens at: 3.
                    (topez lookup: (tokens at: 2)) cp: destinationPath in: (topez baseNodeFor: destinationPath) ];
        at: 'ls'
            put: [ :evaluator :topez :tokens | 
                    tokens size = 1
                        ifTrue: [ topez currentNode listContents ]
                        ifFalse: [ (topez lookup: (tokens at: 2)) listContents ] ];
        at: 'mkdir'
            put: [ :evaluator :topez :tokens | 
                    | destinationPath |
                    destinationPath := tokens at: 2.
                    topez currentNode mkdir: destinationPath in: (topez baseNodeFor: destinationPath) ];
        at: 'mv'
            put: [ :evaluator :topez :tokens | 
                    | destinationPath |
                    destinationPath := tokens at: 3.
                    (topez lookup: (tokens at: 2)) mv: destinationPath in: (topez baseNodeFor: destinationPath) ];
        at: 'pwd' put: [ :evaluator :topez :tokens | topez currentNode ];
        at: 'rm'
            put: [ :evaluator :topez :tokens | 
                    (topez lookup: (tokens at: 2)) rm.
                    topez currentNode ];
        at: 'touch'
            put: [ :evaluator :topez :tokens | 
                    | destinationPath |
                    destinationPath := tokens at: 2.
                    topez currentNode touch: destinationPath in: (topez baseNodeFor: destinationPath) ];
        yourself