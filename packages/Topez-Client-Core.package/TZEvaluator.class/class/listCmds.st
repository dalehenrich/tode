command definition
listCmds
    "TZGsEvaluator initialize.
	TZNativeEvaluator initialize"

    commands
        at: 'list'
        put: [ :evaluator :topez :tokens | 
            tokens size = 1
                ifTrue: [ 
                    | method |
                    method := (evaluator stack at: evaluator currentFrameIndex) method.
                    (topez sourceForMethod: method) asText copy ]
                ifFalse: [ 
                    | sub selector block |
                    sub := (selector := tokens at: 2) asSymbol.
                    block := (subCommands at: #'list') at: sub ifAbsent: [  ].
                    TZLister new
                        listProxy:
                                (block == nil
                                        ifTrue: [ 
                                            ((subCommands at: #'list') at: #'method:')
                                                value: evaluator
                                                value: topez
                                                value:
                                                    {'list'.
                                                    'method:'.
                                                    selector} ]
                                        ifFalse: [ block value: evaluator value: topez value: tokens ]);
                        yourself ] ].
    subCommands
        at: #'list'
        put:
            (Dictionary new
                at: #'classes' put: [ :evaluator :topez :tokens |  ];
                at: #'prclasses' put: [ :evaluator :topez :tokens | topez classesInMetacelloProject ];
                at: #'method:' put: [ :evaluator :topez :tokens | topez sourceForMethod: (tokens at: 3) ];
                at: #'classmethod:' put: [ :evaluator :topez :tokens | topez sourceForClassMethod: (tokens at: 3) ];
                at: #'selectors' put: [ :evaluator :topez :tokens | topez instanceSelectors: topez currentClass ];
                at: #'cselectors' put: [ :evaluator :topez :tokens | topez classSelectors: topez currentClass ];
                yourself)