accessing
menuActionBlock
  "works in concert with #menuActionSpec"

  ^ [ :actionSymbol :sourceElement :arg1 :arg2 :arg3 | 
  | numArgs result |
  numArgs := actionSymbol numArgs.
  result := numArgs <= 2
    ifTrue: [ self handleMenuActions: actionSymbol listElement: sourceElement actionArg: arg1 ]
    ifFalse: [ 
      self
        handleMenuActions: actionSymbol
        listElement: sourceElement
        selectionInterval: (arg1 to: arg2)
        dirty: arg3 ].
  sourceElement topez commitTransaction.
  result ]