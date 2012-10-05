commands
listCmds
    "self initialize"

    Commands
        at: 'list'
        put: [ :evaluator :topez :tokens | 
            tokens size = 1
                ifTrue: [ 
                    | method text styler |
                    method := (evaluator stack at: evaluator currentFrameIndex) named at: #'method'.
                    styler := evaluator stStyler.
                    text := (topez sourceForMethod: method) asText copy.
                    styler privateStyle: text.
                    text ]
                ifFalse: [ 
                    | sub selector block |
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
                at: #'selectors' put: [ :evaluator :topez :tokens |  ];
                yourself)