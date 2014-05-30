menu actions
browseImplementorsMenuAction: listElement selectionIndex: selectionIndex
  | operation browseTool findTool methodDefs selector |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  operation := self operations at: selectionIndex.
  selector := operation methodSelector.
  selector ifNil: [ ^ false ].
  self browseImplementersOf: selector listElement: listElement.
  ^ true