tools
clientList: miniTool listElement: listElement
  theMiniTool := miniTool.
  workingCopies := self workingCopyBlock value.
  ^ workingCopies collect: [ :wc | wc printString ]