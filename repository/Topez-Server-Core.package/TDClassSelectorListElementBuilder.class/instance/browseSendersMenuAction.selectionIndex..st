menu actions
browseSendersMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute def defs selector findTool browseTool |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  itemAttribute := listElement itemCache at: selectionIndex.
  def := itemAttribute object.
  selector := def selector asString.
  findTool := self findTool: listElement.
  defs := findTool findSender: selector.
  browseTool := self browseTool: listElement.
  browseTool browseMethods: defs label: 'Senders of ' , selector.
  ^ true