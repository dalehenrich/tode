accessing
menuActionBlock
  ^ [ :miniTool :actionSymbol :listElement :index | 
  self
    menuAction: miniTool
    actionSymbol: actionSymbol
    listElement: listElement
    selectedIndex: index ]