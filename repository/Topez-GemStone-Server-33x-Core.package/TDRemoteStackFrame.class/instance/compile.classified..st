accessing
compile: sourceString classified: methodProtocol
  self session
    executeBlock: [ :classOop :source :protocol | 
      | frameContents stream |
      (Object _objectForOop: classOop)
        compileMethod: source
        category: protocol
        using: GsSession currentSession symbolList
        environmentId: 0 ]
    withArguments:
      {(self inClassOop).
      sourceString.
      methodProtocol}.
  ^ (Object _objectForOop: self inClassOop)
    ifNotNil: [ :theClass | 
      (Behavior parseSelector: sourceString for: theClass)
        ifNotNil: [ :s | s asSymbol ] ]