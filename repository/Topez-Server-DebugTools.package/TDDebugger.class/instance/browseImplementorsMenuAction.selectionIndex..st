menu actions
browseImplementorsMenuAction: listElement selectionIndex: selectionIndex
  | stack selector defs findTool methodDefs browseTool |
  stack := self theStack.
  stack navigateFrame: selectionIndex.
  selector := stack currentFrame selector.
  findTool := self findTool: listElement.
  methodDefs := findTool findMethod: selector asString.
  browseTool := self browseTool: listElement.
  browseTool browseMethods: methodDefs label: 'Implementors of ' , selector.
  ^ true