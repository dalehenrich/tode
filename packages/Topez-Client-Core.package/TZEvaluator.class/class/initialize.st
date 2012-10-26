class initialization
initialize
    "TZGsEvaluator initialize.
	TZNativeEvaluator initialize"

    commands := Dictionary new.
    subCommands := Dictionary new.
    rootNode := nil.
    self
        findCmds;
        runCmds;
        debuggerCmds;
        editCmds;
        listCmds;
        runCmds;
        statusCmds;
        installNodes;
        nodeCmds;
        yourself