menu actions
browseSendersOf: selector listElement: listElement
  | findTool block browseTool |
  findTool := self findTool.
  block := [ findTool findSender: selector ].
  browseTool := self browseTool.
  browseTool browseMethodsBlock: block label: 'Senders of ' , selector