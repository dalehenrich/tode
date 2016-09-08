private
method
  ^ (self dynamicInstVarAt: #'method')
    ifNil: [ 
      | methodOop theMethod |
      methodOop := self session
        executeBlock: [ :processOop :fIndex | 
          | method process fc |
          process := Object _objectForOop: processOop.
          fc := process _frameContentsAt: fIndex.
          method := fc at: 1.
          method asOop ]
        with: self processOop
        with: self frameIndex.
      theMethod := Object _objectForOop: methodOop.
      theMethod isNil
        ifTrue: [ self halt ].
      self dynamicInstVarAt: #'method' put: theMethod ]