as yet unclassified
exceptionClass
  | className |
  className := self session
    executeBlock: [ :anExceptionOop | (Object _objectForOop: anExceptionOop) class name ]
    with: self exceptionOop.
  ^ GsSession currentSession symbolList objectNamed: className