tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | currentFrame |
  theMiniTool := miniTool.
  index = 0
    ifTrue: [ ^ false ].
  self theStack navigateFrame: index.
  currentFrame := self theStack currentFrame.
  self selectFrame: currentFrame.
  ^ #'refreshList'