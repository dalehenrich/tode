menu actions - Search
implementorsOfItMenuAction: clientSourceElement selectedText: selectedString
  | selector methodDefs findTool browseTool |
  selector := selectedString findSelector.
  findTool := self findTool: clientSourceElement.
  methodDefs := findTool findMethod: selector asString.
  browseTool := self browseTool: clientSourceElement.
  browseTool browseMethods: methodDefs label: 'Implementors of ' , selector.
  ^ true