menu actions
browseImplementorsMenuAction: listElement selectionIndex: selectionIndex
  | stack selector defs findTool block browseTool |
  stack := self theStack.
  stack navigateFrame: selectionIndex.
  selector := stack currentFrame selector asString.
  findTool := self findTool: listElement.
  block := [ findTool findMethod: selector ].
  browseTool := self browseTool: listElement.
  browseTool browseMethodsBlock: block label: 'Implementors of ' , selector.
  ^ true