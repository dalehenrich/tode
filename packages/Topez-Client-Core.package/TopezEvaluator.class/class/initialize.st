class initialization
initialize
    "self initialize"

    Commands := Dictionary new.
    SubCommands := Dictionary new.
    self
        runCmds;
        debuggerCmds;
        listCmds;
        yourself