tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | offset sha oneline |
  theMiniTool := miniTool.
  index = 0
    ifTrue: [ ^ false ].
  oneline := self commitLogList at: index.
  offset := oneline indexOf: Character space.
  sha := oneline copyFrom: 1 to: offset - 1.
  self logItemSelectedBlock value: listElement value: self value: sha.
  ^ true