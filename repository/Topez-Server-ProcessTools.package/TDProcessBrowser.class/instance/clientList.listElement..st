tools
clientList: miniTool listElement: listElement
  theMiniTool := miniTool.
  theProcessList := self _processList.
  ^ (theProcessList collect: [ :each | each printString ]) -> nil