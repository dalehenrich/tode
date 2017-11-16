initialization
debugProcessOop: aGsProcessOop exceptionOop: anExceptionOop session: aTDGsExternalSession
  terminateProcessOnClose := debuggingProcess := true.
  stackNode := self
    createStackNodeFor: aGsProcessOop
    exception: anExceptionOop
    session: aTDGsExternalSession.
  processTerminated := false