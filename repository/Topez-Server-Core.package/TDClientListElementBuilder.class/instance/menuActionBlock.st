accessing
menuActionBlock
  "works in concert with #menuActionSpec"

  ^ [ :actionSymbol :listElement :actionArg | 
  self
    handleMenuActions: actionSymbol
    listElement: listElement
    actionArg: actionArg ]