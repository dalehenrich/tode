tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | operation selector |
  (super
    itemSelected: miniTool
    listElement: listElement
    selectedIndex: index
    shiftPressed: shiftPressed) == false
    ifTrue: [ ^ false ].
  operation := self operations at: index.
  selector := #'clearMenuCategory:'.
  operation hasFileTreeSmalltalkSource
    ifTrue: [ selector := #'setMenuCategory:' ].
  ^ STON
    toString:
      {#'setMenuCategory:'.
      #'operationSelected'.
      selector.
      #'stMenuItem'}