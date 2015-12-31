actions
inspectRoassalObject
  self isCacheValid
    ifFalse: [ 
      self
        error:
          'The object cache for the reference paths results has expired and inspect results will be unreliable.' ].
  (Object _objectForOop: self oop) inspect.
  ^ nil