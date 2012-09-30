test debugging
testStep
    | errorResult debuggerContext stepResult |
    self
        do: [ :tpz | 
            tpz
                run: self debugTestClassDefinition;
                setClass: 'TestStep';
                setCategory: 'tests';
                method: self stepTestCallMethod;
                method: self stepTestHalt1Method;
                yourself ].
    errorResult := self runExpectingError: 'TestStep new halt1Method'.
    debuggerContext := errorResult context.
    stepResult := self doExpectingBreakpoint: [ :tpz | tpz stepOver: debuggerContext ]