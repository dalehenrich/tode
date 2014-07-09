menu actions - Search
regexSendersMenuAction: sourceElement selectedText: regex
  | findTool browseTool block |
  findTool := self browseTool: sourceElement.
  block := [ findTool findRegexSender: regex ].
  browseTool := self browseTool: sourceElement.
  browseTool browseMethodsBlock: block label: 'Senders of ' , regex , ' (regex)'.
  ^ true