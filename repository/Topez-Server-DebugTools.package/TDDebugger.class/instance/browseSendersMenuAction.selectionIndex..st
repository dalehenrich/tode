menu actions
browseSendersMenuAction: listElement selectionIndex: selectionIndex
  | stack selector block findTool browseTool |
  stack := self theStack.
  stack navigateFrame: selectionIndex.
  selector := stack currentFrame selector asString.
  findTool := self findTool: listElement.
  block := [ findTool findSender: selector ].
  browseTool := self browseTool: listElement.
  browseTool browseMethodsBlock: block label: 'Senders of ' , selector.
  ^ true