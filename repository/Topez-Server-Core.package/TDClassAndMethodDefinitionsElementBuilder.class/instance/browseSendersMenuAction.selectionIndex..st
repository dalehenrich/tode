menu actions
browseSendersMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute def findTool block browseTool |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  itemAttribute := listElement itemCache at: selectionIndex.
  def := itemAttribute object.
  findTool := self findTool: listElement.
  block := [ findTool findSender: def selector ].
  browseTool := self browseTool: listElement.
  browseTool browseMethodsBlock: block label: 'Senders of ' , def selector.
  ^ true