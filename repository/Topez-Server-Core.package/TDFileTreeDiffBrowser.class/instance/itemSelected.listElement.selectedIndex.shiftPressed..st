tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | operation selector |
  (super
    itemSelected: miniTool
    listElement: listElement
    selectedIndex: index
    shiftPressed: shiftPressed)
    ifFalse: [ ^ false ].
  operation := self operations at: index.
  selector := #'clearMenuCategory:'.
  operation hasFileTreeSmalltalkSource
    ifTrue: [ selector := #'setMenuCategory:' ].
  ^ STON
    toString:
      {selector.
      #'stMenuItem'}