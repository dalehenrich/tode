class initialization
initialize
    "TZGemStoneEvaluator initialize.
	TZNativeEvaluator initialize"

    commands := Dictionary new.
    subCommands := Dictionary new.
    self
        runCmds;
        debuggerCmds;
        editCmds;
        listCmds;
        runCmds;
        statusCmds;
        yourself