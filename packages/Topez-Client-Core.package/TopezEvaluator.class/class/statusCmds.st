commands
statusCmds
    "self initialize"

    Commands
        at: 'set'
        put: [ :evaluator :topez :tokens | 
            | sub block |
            sub := (tokens at: 2) asSymbol.
            block := (SubCommands at: #'set') at: sub.
            block value: evaluator value: topez value: tokens ].
    SubCommands
        at: #'set'
        put:
            (Dictionary new
                at: #'category'
                    put: [ :evaluator :topez :tokens | 
                            evaluator status category: (tokens at: 3).
                            '' ];
                at: #'class'
                    put: [ :evaluator :topez :tokens | 
                            evaluator status selectedClass: (topez run: (tokens at: 3)).
                            '' ];
                at: #'package'
                    put: [ :evaluator :topez :tokens | 
                            evaluator status package: (tokens at: 3).
                            '' ];
                at: #'project'
                    put: [ :evaluator :topez :tokens | 
                            evaluator status project: (tokens at: 3).
                            '' ];
                yourself)