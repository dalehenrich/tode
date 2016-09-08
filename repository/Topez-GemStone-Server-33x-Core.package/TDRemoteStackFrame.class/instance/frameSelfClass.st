accessing
frameSelfClass
  ^ (self dynamicInstVarAt: #'frameSelfClass')
    ifNil: [ 
      | className class |
      className := self session
        executeBlock: [ :processOop :fIndex | 
          | receiver process fc |
          process := Object _objectForOop: processOop.
          fc := process _frameContentsAt: fIndex.
          receiver := (fc at: 8)
            ifNotNil: [ :frameSelf | frameSelf ]
            ifNil: [ fc at: 10 ].
          receiver class name ]
        with: self processOop
        with: self frameIndex.
      class := GsSession currentSession symbolList objectNamed: className.
      self dynamicInstVarAt: #'frameSelfClass' put: class ]