menu actions
handleMenuActions: actionSymbol listElement: listElement actionArg: actionArg
  "works in concert with #menuActionSpec"

  | numArgs |
  numArgs := actionSymbol numArgs.
  numArgs == 0
    ifTrue: [ ^ self perform: actionSymbol ].
  numArgs == 1
    ifTrue: [ ^ self perform: actionSymbol with: listElement ].
  ^ self perform: actionSymbol with: listElement with: actionArg