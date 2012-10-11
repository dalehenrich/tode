class initialization
initialize
    "TZGsEvaluator initialize.
	TZNativeEvaluator initialize"

    commands := Dictionary new.
    subCommands := Dictionary new.
    scripts := Dictionary new.
    self
        runCmds;
        debuggerCmds;
        editCmds;
        listCmds;
        runCmds;
        statusCmds;
        defaultScripts;
        yourself