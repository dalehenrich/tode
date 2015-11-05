menu actions - Search
implementorsOfItMenuAction: clientSourceElement selectedText: selectedString
  | selector block findTool browseTool |
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
  block := [ findTool findMethod: selector asString ].
  browseTool := self browseTool: clientSourceElement.
  browseTool browseMethodsBlock: block label: 'Implementors of ' , selector.
  ^ true