compilation
compile: sourceString inClassOop: aClassOop classified: methodProtocol
  ^ self
    executeBlock: [ :behaviorOop :source :protocol | 
      | gsNMethod |
      gsNMethod := (Object _objectForOop: behaviorOop)
        compileMethod: source
        dictionaries: GsSession currentSession symbolList
        category: protocol
        environmentId: 0.
      gsNMethod selector ]
    withArguments:
      {aClassOop.
      sourceString.
      methodProtocol}