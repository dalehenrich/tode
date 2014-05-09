menu actions
browseImplementorsMenuAction: listElement selectionIndex: selectionIndex
  | stack selector defs findTool block browseTool |
  stack := self theStack.
  stack navigateFrame: selectionIndex.
  selector := stack currentFrame selector asString.
  self browseImplementersOf: selector listElement: listElement.
  ^ true