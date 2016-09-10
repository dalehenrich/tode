accessing
compile: sourceString classified: methodProtocol
  | selector |
  ^ self session
    executeBlock: [ :classOop :source :protocol | 
      | gsNMethod |
      gsNMethod := (Object _objectForOop: classOop)
        compileMethod: source
        dictionaries: GsSession currentSession symbolList
        category: protocol
        environmentId: 0.
      gsNMethod selector ]
    withArguments:
      {(self inClassOop).
      sourceString.
      methodProtocol}