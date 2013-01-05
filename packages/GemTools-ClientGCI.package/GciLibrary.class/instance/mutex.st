Wrapper
mutex
  mutex ifNil: [ mutex := Mutex new ].
  ^ mutex