private
_nativeStack
  ^ (self dynamicInstVarAt: #'_nativeStack')
    ifNil: [ 
      | _nativeStack |
      _nativeStack := self session
        executeBlock: [ :processOop :fIndex | 
          | process |
          process := Object _objectForOop: processOop.
          process _nativeStack ]
        with: self processOop
        with: self frameIndex.
      self dynamicInstVarAt: #'_nativeStack' put: _nativeStack ]