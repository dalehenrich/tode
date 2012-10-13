accessing
debugMode
    DebugMode ifNil: [ DebugMode := false ].
    ^ DebugMode