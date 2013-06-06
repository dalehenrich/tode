accessing
enableDebugger
    EnableDebugger ifNil: [ EnableDebugger := false ].
    ^ EnableDebugger