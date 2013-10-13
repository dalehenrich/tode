tools
clientList: miniTool listElement: listElement
  theMiniTool := miniTool.
  ^ self repositories collect: [ :repo | repo description ]