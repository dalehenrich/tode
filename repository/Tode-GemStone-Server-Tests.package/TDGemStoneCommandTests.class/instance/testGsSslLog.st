tests
testGsSslLog
  [ 
  self
    evaluateCommandString: 'gs --help sslLog';
    evaluateCommandString: 'gs sslLog';
    yourself ]
    on: GsInteractionRequest
    do: [ :ir | 
      "inspecting results ... don't bring up a window during tests"
      ir resume ]