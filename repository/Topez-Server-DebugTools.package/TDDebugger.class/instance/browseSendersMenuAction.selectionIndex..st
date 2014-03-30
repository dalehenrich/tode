menu actions
browseSendersMenuAction: listElement selectionIndex: selectionIndex
  | stack selector defs findTool browseTool |
  stack := self theStack.
  stack navigateFrame: selectionIndex.
  selector := stack currentFrame selector asString.
  findTool := self findTool: listElement.
  defs := findTool findSender: selector.
  browseTool := self browseTool: listElement.
  browseTool browseMethods: defs label: 'Senders of ' , selector.
  ^ true