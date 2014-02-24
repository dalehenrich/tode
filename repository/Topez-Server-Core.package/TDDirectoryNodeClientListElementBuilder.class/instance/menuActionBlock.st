menu actions
menuActionBlock
  "works in concert with #menuActionSpec"

  ^ [ :actionSymbolOrInteger :listElement :actionArg | 
  | result |
  actionSymbolOrInteger isSymbol
    ifTrue: [ 
      result := self
        handleMenuActions: actionSymbolOrInteger
        listElement: listElement
        actionArg: actionArg ]
    ifFalse: [ 
      | ar parentList highlightIndex editorAspect parentIndex parents obj parent |
      parentIndex := actionSymbolOrInteger.
      parentList := listElement parentList.
      ar := parentList at: parentIndex.
      highlightIndex := ar at: 1.
      editorAspect := ar at: 2.
      parents := self objectParents.
      obj := parents at: parentIndex.
      parentIndex > 1
        ifTrue: [ 
          parent := parentList at: parentIndex - 1.
          parentList := parentList copyFrom: 1 to: parentIndex - 1 ]
        ifFalse: [ parentList := #() ].
      obj
        editUsing:
          ((TDEditorSpec topez: listElement topez editorAspect: editorAspect)
            parentObject: parent;
            highlightIndex: highlightIndex;
            parentList: parentList;
            windowName: listElement editorWindowName;
            yourself) ].
  result ]