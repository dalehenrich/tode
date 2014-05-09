tools
browseSendersOf: selector listElement: listElement
  | findTool block browseTool |
  findTool := self findTool: listElement.
  block := [ findTool findSender: selector ].
  browseTool := self browseTool: listElement.
  browseTool browseMethodsBlock: block label: 'Senders of ' , selector