commands
listCmds
    "self initialize"

    Commands
        at: 'list'
        put: [ :evaluator :topez :tokens | 
            tokens size = 1
                ifTrue: [ 
                    | method |
                    self halt: 'confusion between currentFrame and indexOfCurrentFrame ... need two methods'.
                    method := (evaluator stack indexed at: evaluator currentFrame) named at: #'method'.
                    topez sourceForMethod: method ]
                ifFalse: [ 
                    | sub selector block |
                    self halt.
                    sub := (selector := tokens at: 2) asSymbol.
                    block := (SubCommands at: #'list') at: sub ifAbsent: [  ].
                    block == nil
                        ifTrue: [ 
                            ((SubCommands at: #'list') at: #'method:')
                                value: evaluator
                                value: topez
                                value:
                                    {'list'.
                                    'method:'.
                                    selector} ]
                        ifFalse: [ block value: evaluator value: topez value: tokens ] ] ].
    SubCommands
        at: #'list'
        put:
            (Dictionary new
                at: #'method:' put: [ :evaluator :topez :tokens |  ];
                yourself)