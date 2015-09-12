tools
menuAction: miniTool actionSymbol: actionSymbol listElement: listElement selectedIndex: index
  (self respondsTo: actionSymbol)
    ifTrue: [ 
      ^ self
        perform: actionSymbol
        withArguments:
          {listElement.
          index} ].
  ^ actionSymbol numArgs == 2
    ifTrue: [ 
      miniTool builder
        perform: actionSymbol
        withArguments:
          {listElement.
          index} ]
    ifFalse: [ miniTool builder perform: actionSymbol withArguments: {listElement} ]