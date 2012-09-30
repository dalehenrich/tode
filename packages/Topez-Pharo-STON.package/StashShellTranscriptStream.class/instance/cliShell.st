accessing
cliShell
    "Answer the value of cliShell"

    ^ cliShell
        ifNil: [ 
            cliShell := TopezEvaluator new
                tty: self;
                yourself ]