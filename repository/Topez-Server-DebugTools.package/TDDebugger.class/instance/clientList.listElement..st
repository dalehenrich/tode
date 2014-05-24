tools
clientList: miniTool listElement: listElement
  | selectedIndex |
  theMiniTool := miniTool.
  listElement ~~ nil
    ifTrue: [ selectedIndex := self theStack currentFrame frameIndex ]
    ifFalse: [ selectedIndex := nil ].
  ^ self frameList -> selectedIndex