menu actions
browseSendersMenuAction: listElement selectionIndex: selectionIndex
  | stack selector block findTool browseTool |
  stack := self theStack.
  stack navigateFrame: selectionIndex.
  selector := stack currentFrame selector asString.
  self browseSendersOf: selector listElement: listElement.
  ^ true