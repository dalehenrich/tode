tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  theMiniTool := miniTool.
  index = 0
    ifTrue: [ ^ false ].
  (self manPages at: index) view: listElement topez.
  ^ true