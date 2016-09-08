as yet unclassified
exceptionClass
  | className |
  className := self session
    executeBlock: [ :anExceptionOop | (Object _objectForOop: anExceptionOop) class name ]
    with: self execptionOop.
  ^ GsSession currentSession symbolList objectNamed: className