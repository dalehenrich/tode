menu actions - Search
regexImplementorsMenuAction: sourceElement selectedText: regex
  "browse rmethod <regex>"

  | browseTool methodDefs |
  browseTool := self browseTool: sourceElement.
  methodDefs := (browseTool findRegexMethod: regex) select: [ :ignored | true ].
  browseTool
    browseMethods: methodDefs
    label: 'Implementors of (regexx): ' , regex.
  ^ true