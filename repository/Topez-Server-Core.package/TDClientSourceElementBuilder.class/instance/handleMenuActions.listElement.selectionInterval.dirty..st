menu actions
handleMenuActions: actionSymbol listElement: listElement selectionInterval: selectionInterval dirty: dirty
  "works in concert with #menuActionSpec"

  ^ self
    perform: actionSymbol
    with: listElement
    with: selectionInterval
    with: dirty