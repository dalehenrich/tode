accessing
menuActionBlock
  "works in concert with #menuActionSpec"

  ^ [ :actionSymbol :listElement :arg1 :arg2 :arg3 | 
  | numArgs |
  numArgs := actionSymbol numArgs.
  numArgs == 2
    ifTrue: [ self handleMenuActions: actionSymbol listElement: listElement actionArg: arg1 ]
    ifFalse: [ 
      self
        handleMenuActions: actionSymbol
        listElement: listElement
        selectionInterval: (arg1 to: arg2)
        dirty: arg3 ] ]