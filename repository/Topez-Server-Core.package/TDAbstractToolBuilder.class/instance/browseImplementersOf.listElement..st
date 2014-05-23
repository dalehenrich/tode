menu actions
browseImplementersOf: selector listElement: listElement
  | findTool block browseTool |
  findTool := self findTool.
  block := [ findTool findMethod: selector ].
  browseTool := self browseTool.
  browseTool browseMethodsBlock: block label: 'Implementors of ' , selector