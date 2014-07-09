menu actions - Search
pureSendersMenuAction: sourceElement selectedText: selectedString
  | selector findTool browseTool block |
  selector := selectedString findSelector.
  findTool := self browseTool: sourceElement.
  block := [ findTool findPureSender: selector ].
  browseTool := self browseTool: sourceElement.
  browseTool browseMethodsBlock: block label: 'Senders of ' , selector.
  ^ true