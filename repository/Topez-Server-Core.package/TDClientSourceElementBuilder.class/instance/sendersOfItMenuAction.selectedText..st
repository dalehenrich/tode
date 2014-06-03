menu actions - Search
sendersOfItMenuAction: clientSourceElement selectedText: selectedString
  | selector block findTool browseTool |
  selector := selectedString findSelector.
  findTool := self findTool: clientSourceElement.
  block := [ findTool findSender: selector ].
  browseTool := self browseTool: clientSourceElement.
  browseTool browseMethodsBlock: block label: 'Senders of ' , selector.
  ^ true