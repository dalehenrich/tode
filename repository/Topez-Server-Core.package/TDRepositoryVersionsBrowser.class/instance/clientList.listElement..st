tools
clientList: miniTool listElement: listElement
  theMiniTool := miniTool.
  ^ self versions collect: [ :resolvedReference | resolvedReference name ]