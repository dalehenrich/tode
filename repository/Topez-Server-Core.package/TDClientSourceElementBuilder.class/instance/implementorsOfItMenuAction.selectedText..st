menu actions - Search
implementorsOfItMenuAction: clientSourceElement selectedText: selectedString
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
  (self object isKindOf: TDDefinition)
    ifTrue: [ username := self object username ].
  block := [ findTool findMethod: selector asString username: username ].
  browseTool := self browseTool: clientSourceElement.
  browseTool browseMethodsBlock: block label: 'Implementors of ' , selector.
  ^ true