menu actions - Search
regexImplementorsMenuAction: sourceElement selectedText: regex
  | findTool browseTool block |
  findTool := self browseTool: sourceElement.
  block := [ findTool findRegexMethod: regex ].
  browseTool := self browseTool: sourceElement.
  browseTool
    browseMethodsBlock: block
    label: 'Implementors of ' , regex , ' (regex)'.
  ^ true