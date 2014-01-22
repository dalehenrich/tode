tools
clientList: miniTool listElement: listElement
  theMiniTool := miniTool.
  listElement ~~ nil
    ifTrue: [ listElement selectedIndex: self theStack currentFrame frameIndex ].
  ^ self frameList