tools
clientList: miniTool listElement: listElement
  theMiniTool := miniTool.
  leafNodes := self leafNodesBlock value asArray.
  ^ (leafNodes collect: [ :leafNode | leafNode printString ]) -> nil