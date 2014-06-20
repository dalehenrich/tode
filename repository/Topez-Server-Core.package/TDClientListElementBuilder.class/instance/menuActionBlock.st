accessing
menuActionBlock
  "works in concert with #menuActionSpec"

  ^ [ :actionSymbol :listElement :actionArg | 
  | menuActionResult |
  menuActionResult := self
    handleMenuActions: actionSymbol
    listElement: listElement
    actionArg: actionArg.
  listElement topez commitTransaction.
  menuActionResult ]