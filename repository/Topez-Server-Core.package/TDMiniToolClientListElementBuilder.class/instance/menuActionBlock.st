menu actions
menuActionBlock
  "works in concert with #menuActionSpec"

  ^ [ :actionSymbol :listElement :index | 
  self theEditorSpec
    menuAction: self
    actionSymbol: actionSymbol
    listElement: listElement
    selectedIndex: index ]