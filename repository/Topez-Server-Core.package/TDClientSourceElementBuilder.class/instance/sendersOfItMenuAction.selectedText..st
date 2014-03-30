menu actions - Search
sendersOfItMenuAction: clientSourceElement selectedText: selectedString
  | selector defs findTool browseTool |
  selector := selectedString findSelector.
  findTool := self findTool: clientSourceElement.
  defs := findTool findSender: selector.
  browseTool := self browseTool: clientSourceElement.
  browseTool browseMethods: defs label: 'Senders of ' , selector.
  ^ true