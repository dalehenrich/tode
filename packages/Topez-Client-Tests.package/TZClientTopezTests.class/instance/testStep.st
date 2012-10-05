test debugging
testStep
    | errorResult debuggerContext stepResult topOfStackString |
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
    stepResult := self doExpectingBreakpoint: [ :tpz | tpz stepWith: debuggerContext level: 1 ].
    topOfStackString := self do: [ :tpz | tpz fetchFrameFor: debuggerContext frameId: 1 level: 0 ].
    self assert: topOfStackString = 'TestStep >> halt1Method                       (envId 0)@2 line 3'