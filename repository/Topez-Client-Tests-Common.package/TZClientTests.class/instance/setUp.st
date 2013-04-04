running
setUp
    super setUp.
    debugMode := TZEvaluator debugMode.
    enableDebugger := TZEvaluator enableDebugger.
    TZEvaluator
        debugMode: false;
        enableDebugger: false