initialization
debugProcess: aGsProcess exception: anException
  terminateProcessOnClose := debuggingProcess := true.
  stackNode := self createStackNodeFor: aGsProcess exception: anException