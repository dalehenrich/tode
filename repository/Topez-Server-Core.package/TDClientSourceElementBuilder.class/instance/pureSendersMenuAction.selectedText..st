menu actions - Search
pureSendersMenuAction: sourceElement selectedText: selectedString
  | selector findTool browseTool block |
  selector := selectedString findSelector.
  selector
    ifNil: [ 
      self
        error:
          'No Symbol matching the selector pattern found in: '
            , selectedString printString
            ,
              '. Either the selector does not exist, or a $: character in the selected string is confusing the parser.' ].
  findTool := self browseTool: sourceElement.
  block := [ findTool findPureSender: selector ].
  browseTool := self browseTool: sourceElement.
  browseTool browseMethodsBlock: block label: 'Senders of ' , selector.
  ^ true