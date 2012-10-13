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
                at: #'scripts'
                    put: [ :evaluator :topez :tokens | 
                            | stream |
                            stream := WriteStream on: String new.
                            self scripts associations
                                do: [ :assoc | 
                                    stream nextPutAll: assoc key asString.
                                    assoc value notEmpty
                                        ifTrue: [ stream cr ].
                                    assoc value keys
                                        do: [ :scriptName | 
                                            stream
                                                tab;
                                                nextPutAll: scriptName ]
                                        separatedBy: [ stream cr ] ]
                                separatedBy: [ stream cr ].
                            stream contents ];
                at: #'superclasses' put: [ :evaluator :topez :tokens | topez superclassesOf: topez currentClass ];
                at: #'subclasses' put: [ :evaluator :topez :tokens | topez subclassesOf: topez currentClass ];
                at: #'prclasses' put: [ :evaluator :topez :tokens | topez classesInMetacelloProject ];
                at: #'prtests' put: [ :evaluator :topez :tokens | topez testClassesInMetacelloProject ];
                at: #'method:' put: [ :evaluator :topez :tokens | topez sourceForMethod: (tokens at: 3) ];
                at: #'classmethod:' put: [ :evaluator :topez :tokens | topez sourceForClassMethod: (tokens at: 3) ];
                at: #'selectors' put: [ :evaluator :topez :tokens | topez instanceSelectors: topez currentClass ];
                at: #'cselectors' put: [ :evaluator :topez :tokens | topez classSelectors: topez currentClass ];
                at: #'class' put: [ :evaluator :topez :tokens | topez findMatchingClassNames: (tokens at: 3) ];
                yourself)