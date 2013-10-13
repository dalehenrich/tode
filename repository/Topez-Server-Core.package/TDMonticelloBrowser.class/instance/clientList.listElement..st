tools
clientList: miniTool listElement: listElement
  theMiniTool := miniTool.
  ^ self workingCopies collect: [ :wc | wc printString ]