tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | selector |
  (super
    itemSelected: miniTool
    listElement: listElement
    selectedIndex: index
    shiftPressed: shiftPressed)
    ifFalse: [ ^ false ].
  ^ STON
    toString:
      {#'setMenuCategory:'.
      #'operationSelected'}