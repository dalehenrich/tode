menu actions
menuActionBlock
  "works in concert with #menuActionSpec"

  ^ [ :actionSymbol :listElement :actionArg | 
  | menuActionResult |
  menuActionResult := self theEditorSpec
    menuAction: self
    actionSymbol: actionSymbol
    listElement: listElement
    selectedIndex: actionArg.
  listElement topez commitTransaction.
  menuActionResult ]