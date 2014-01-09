initialization
debugProcess: aGsProcess exception: anException
  terminateProcessOnClose := true.
  stackNode := self createStackNodeFor: aGsProcess exception: anException