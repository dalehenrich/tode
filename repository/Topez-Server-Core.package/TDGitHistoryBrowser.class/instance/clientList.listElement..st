tools
clientList: miniTool listElement: listElement
  theMiniTool := miniTool.
  ^ (self history collect: [ :op | op printText ]) -> nil