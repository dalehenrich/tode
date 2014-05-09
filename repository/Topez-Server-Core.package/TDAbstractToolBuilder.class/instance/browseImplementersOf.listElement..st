tools
browseImplementersOf: selector listElement: listElement
  | findTool block browseTool |
  findTool := self findTool: listElement.
  block := [ findTool findMethod: selector ].
  browseTool := self browseTool: listElement.
  browseTool browseMethodsBlock: block label: 'Implementors of ' , selector