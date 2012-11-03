class initialization
initialize
    "TZGsEvaluator initialize.
	TZNativeEvaluator initialize"

    commands := Dictionary new.
    subCommands := Dictionary new.
    self
        debuggerCmds;
        editCmds;
        findCmds;
        listCmds;
        mczCmds;
        runCmds;
        statusCmds;
        installNodes;
        nodeCmds;
        yourself