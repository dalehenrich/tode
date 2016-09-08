private
ipOffset
  ^ (self dynamicInstVarAt: #'ipOffset')
    ifNil: [ 
      | ipOffset |
      ipOffset := self session
        executeBlock: [ :processOop :fIndex | 
          | process fc |
          process := Object _objectForOop: processOop.
          fc := process _frameContentsAt: fIndex.
          fc at: 2 ]
        with: self processOop
        with: self frameIndex.
      self dynamicInstVarAt: #'ipOffset' put: ipOffset ]