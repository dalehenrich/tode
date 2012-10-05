commands
editCmds
    "self initialize"

    Commands
        at: 'edit'
        put: [ :evaluator :topez :tokens | 
            tokens size = 1
                ifTrue: [ 
                    | method |
                    method := (evaluator stack at: evaluator currentFrameIndex) named at: #'method'.
                    TopezCodeEditor openContents: (topez sourceForMethod: method) inClass: Object label: 'Method'.
                    '' ]
                ifFalse: [ 
                    | sub selector block |
                    sub := (selector := tokens at: 2) asSymbol.
                    block := (SubCommands at: #'edit') at: sub ifAbsent: [  ].
                    block == nil
                        ifTrue: [ 
                            ((SubCommands at: #'edit') at: #'method:')
                                value: evaluator
                                value: topez
                                value:
                                    {'list'.
                                    'method:'.
                                    selector} ]
                        ifFalse: [ block value: evaluator value: topez value: tokens ] ] ].
    SubCommands
        at: #'edit'
        put:
            (Dictionary new
                at: #'class'
                    put: [ :evaluator :topez :tokens | 
                            TopezCodeEditor openContents: (topez classDefinition: evaluator status selectedClass) label: 'Class'.
                            '' ];
                at: #'method:' put: [ :evaluator :topez :tokens |  ];
                at: #'selectors'
                    put: [ :evaluator :topez :tokens | 
                            TopezListEditor
                                openList:
                                    ((topez classInstanceSelectors: evaluator status selectedClass) collect: [ :each | each proxyPrintString ])
                                label: 'Selectors'.
                            '' ];
                yourself)