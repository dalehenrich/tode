tools
menuAction: miniTool actionSymbol: actionSymbol listElement: listElement selectedIndex: index
  (self respondsTo: actionSymbol)
    ifTrue: [ 
      ^ self
        perform: actionSymbol
        withArguments:
          {listElement.
          index} ].
  ^ miniTool builder
    perform: actionSymbol
    withArguments:
      {listElement.
      index}