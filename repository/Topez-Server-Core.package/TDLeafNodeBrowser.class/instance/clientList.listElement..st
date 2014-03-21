tools
clientList: miniTool listElement: listElement
  theMiniTool := miniTool.
  ^ (self leafNodes collect: [ :leafNode | leafNode printString ]) -> nil