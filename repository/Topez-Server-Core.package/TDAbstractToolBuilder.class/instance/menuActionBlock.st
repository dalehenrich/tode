accessing
menuActionBlock
  ^ [ :miniTool :actionSymbol :listElement :index | 
  | menuActionResult |
  menuActionResult := self
    menuAction: miniTool
    actionSymbol: actionSymbol
    listElement: listElement
    selectedIndex: index.
  listElement topez commitTransaction.
  menuActionResult ]