private
runExpectingBreakpoint: doit
    | haltEncountered result |
    haltEncountered := false.
    result := self
        run: doit
        onBreakpoint: [ :ex | 
            haltEncountered := true.
            ex resume ].
    self assert: haltEncountered.
    ^ result