menu actions
menuActionBlock
  "works in concert with #menuActionSpec"

  ^ [ :actionSymbolOrInteger :listElement :actionArg | 
  | result |
  actionSymbolOrInteger isSymbol
    ifTrue: [ 
      self
        handleMenuActions: actionSymbolOrInteger
        listElement: listElement
        actionArg: actionArg ]
    ifFalse: [ 
      | parentIndex parentEntry highlightIndex |
      parentIndex := actionSymbolOrInteger.
      parentEntry := self object.
      [ parentIndex > 0 ]
        whileTrue: [ 
          parentEntry := parentEntry parentEntry.
          parentIndex := parentIndex - 1 ].
      highlightIndex := parentEntry parentIndex.
      parentEntry
        editUsing:
          ((TDEditorSpec topez: listElement topez editorAspect: #'profMonResults')
            highlightIndex: highlightIndex;
            yourself) ].
  listElement topez commitTransaction.
  result ]