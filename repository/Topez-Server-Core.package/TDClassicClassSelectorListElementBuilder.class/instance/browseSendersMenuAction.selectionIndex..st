menu actions
browseSendersMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute def block selector findTool browseTool username |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  itemAttribute := listElement itemCache at: selectionIndex.
  def := itemAttribute object.
  username := def username.
  selector := def selector asString.
  findTool := self findTool: listElement.
  block := [ findTool findSender: selector username: username ].
  browseTool := self browseTool: listElement.
  browseTool browseMethodsBlock: block label: 'Senders of ' , selector.
  ^ true