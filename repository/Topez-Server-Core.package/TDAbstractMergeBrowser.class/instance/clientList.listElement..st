tools
clientList: miniTool listElement: listElement
  theMiniTool := miniTool.
  ^ (self operations collect: [ :operation | operation printText ]) -> nil