menu actions - Search
sendersOfItMenuAction: clientSourceElement selectedText: selectedString
  | selector block findTool browseTool username |
  selector := selectedString findSelector.
  selector
    ifNil: [ 
      self
        error:
          'No Symbol matching the selector pattern found in: '
            , selectedString printString
            ,
              '. Either the selector does not exist, or a $: character in the selected string is confusing the parser.' ].
  findTool := self findTool: clientSourceElement.
  username := self object username.
  block := [ findTool findSender: selector username: username ].
  browseTool := self browseTool: clientSourceElement.
  browseTool browseMethodsBlock: block label: 'Senders of ' , selector.
  ^ true