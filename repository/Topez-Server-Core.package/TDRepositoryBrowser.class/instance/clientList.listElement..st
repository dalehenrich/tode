tools
clientList: miniTool listElement: listElement
  theMiniTool := miniTool.
  repositories := repositoryBlock value.
  ^ (repositories collect: [ :repo | repo description ]) -> nil