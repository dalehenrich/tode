menu actions - Search
regexImplementorsMenuAction: sourceElement selectedText: regex
  | findTool browseTool methodDefs |
  findTool := self browseTool: sourceElement.
  methodDefs := findTool findRegexMethod: regex.
  browseTool := self browseTool: sourceElement.
  browseTool
    browseMethods: methodDefs
    label: 'Implementors of ' , regex , ' (regex)'.
  ^ true