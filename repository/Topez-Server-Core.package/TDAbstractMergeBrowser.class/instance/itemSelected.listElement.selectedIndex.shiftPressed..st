tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | operation |
  theMiniTool := miniTool.
  index = 0
    ifTrue: [ ^ false ].
  operation := self operations at: index.
  self editOperation: operation listElement: listElement.
  ^ self enableDisableMenuItems: operation