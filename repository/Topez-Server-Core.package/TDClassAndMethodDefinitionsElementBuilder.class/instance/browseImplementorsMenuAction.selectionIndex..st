menu actions
browseImplementorsMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute def findTool block browseTool |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  itemAttribute := listElement itemCache at: selectionIndex.
  def := itemAttribute object.
  findTool := self findTool: listElement.
  block := [ findTool findMethod: def selector asString ].
  browseTool := self browseTool: listElement.
  browseTool browseMethodsBlock: block label: 'Implementors of ' , def selector.
  ^ true