menu actions
browseSendersMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute def block selector findTool browseTool username |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  itemAttribute := listElement itemCache at: selectionIndex.
  def := itemAttribute object.
  selector := def selector asString.
  findTool := self findTool: listElement.
  username := def username.
  block := [ findTool findSender: selector username: username ].
  browseTool := self browseTool: listElement.
  browseTool browseMethodsBlock: block label: 'Senders of ' , selector.
  ^ true