menu actions
browseSendersMenuAction: listElement selectionIndex: selectionIndex
  | operation browseTool findTool methodDefs selector |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  operation := self operations at: selectionIndex.
  selector := operation methodSelector.
  selector ifNil: [ ^ false ].
  self browseSendersOf: selector listElement: listElement.
  ^ true