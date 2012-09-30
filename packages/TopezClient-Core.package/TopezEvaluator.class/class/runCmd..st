commands
runCmd: commands
    "self initialize"

    commands
        at: 'run'
        put: [ :evaluator :topez :tokens | 
            | doit |
            doit := UIManager default
                multiLineRequest: 'Edit class definition:'
                initialAnswer: '"doit"'
                answerHeight: 150.
            evaluator tty
                show: doit;
                cr;
                show: '%';
                cr.
            evaluator context: nil.
            topez run: doit ]