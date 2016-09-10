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
    with: self processOop
    with: self frameIndex
    with: methodProtocol.
  ^ (Object _objectForOop: self inClassOop)
    ifNotNil: [ :theClass | 
      (Behavior parseSelector: sourceString for: theClass)
        ifNotNil: [ :s | s asSymbol ] ]