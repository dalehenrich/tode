tools
clientList: miniTool listElement: listElement
  theMiniTool := miniTool.
  leafNodes := self leafNodesBlock value.
  ^ (leafNodes collect: [ :leafNode | leafNode printString ]) -> nil