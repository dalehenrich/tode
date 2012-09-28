private
runExpectingError: doit
    | haltEncountered result |
    haltEncountered := false.
    result := self
        run: doit
        onError: [ :ex | 
            haltEncountered := true.
            ex resume ].
    self assert: haltEncountered.
    ^ result