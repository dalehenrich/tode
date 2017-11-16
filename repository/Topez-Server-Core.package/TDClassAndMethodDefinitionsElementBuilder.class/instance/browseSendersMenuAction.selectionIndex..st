menu actions
browseSendersMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute def findTool block browseTool username |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  itemAttribute := listElement itemCache at: selectionIndex.
  def := itemAttribute object.
  findTool := self findTool: listElement.
  username := def username.
  block := [ findTool findSender: def selector username: username ].
  browseTool := self browseTool: listElement.
  browseTool browseMethodsBlock: block label: 'Senders of ' , def selector.
  ^ true