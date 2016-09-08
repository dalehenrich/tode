initialization
debugProcessOop: aGsProcessOop exceptionOop: anExceptionOop
  terminateProcessOnClose := debuggingProcess := true.
  stackNode := self createStackNodeFor: aGsProcessOop exception: anExceptionOop