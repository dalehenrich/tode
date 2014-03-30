menu actions
browseImplementorsMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute def methodDefs selector findTool browseTool |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  itemAttribute := listElement itemCache at: selectionIndex.
  def := itemAttribute object.
  selector := def selector.
  findTool := self findTool: listElement.
  methodDefs := findTool findMethod: selector asString.
  browseTool := self browseTool: listElement.
  browseTool browseMethods: methodDefs label: 'Implementors of ' , selector.
  ^ true