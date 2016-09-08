accessing
receiverOop
  ^ (self dynamicInstVarAt: #'receiverOop')
    ifNil: [ 
      | receiverOop |
      receiverOop := self session
        executeBlock: [ :processOop :fIndex | 
          | receiver process fc |
          process := Object _objectForOop: processOop.
          fc := process _frameContentsAt: fIndex.
          receiver := (fc at: 8)
            ifNotNil: [ :frameSelf | frameSelf ]
            ifNil: [ fc at: 10 ].
          receiver asOop ]
        with: self processOop
        with: self frameIndex.
      self dynamicInstVarAt: #'receiverOop' put: receiverOop ]