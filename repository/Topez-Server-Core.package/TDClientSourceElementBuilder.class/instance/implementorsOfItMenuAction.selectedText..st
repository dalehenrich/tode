menu actions - Search
implementorsOfItMenuAction: clientSourceElement selectedText: selectedString
  | selector block findTool browseTool |
  selector := selectedString findSelector.
  findTool := self findTool: clientSourceElement.
  block := [ findTool findMethod: selector asString ].
  browseTool := self browseTool: clientSourceElement.
  browseTool browseMethodsBlock: block label: 'Implementors of ' , selector.
  ^ true