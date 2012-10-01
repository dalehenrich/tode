class initialization
initialize
    "self initialize"

    Commands := Dictionary new.
    self
        runCmd: Commands;
        debuggerCmds: Commands;
        yourself