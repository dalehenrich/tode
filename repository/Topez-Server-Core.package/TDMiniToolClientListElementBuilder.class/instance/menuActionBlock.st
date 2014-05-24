menu actions
menuActionBlock
  "works in concert with #menuActionSpec"

  ^ [ :actionSymbol :listElement :actionArg | 
  self theEditorSpec
    menuAction: self
    actionSymbol: actionSymbol
    listElement: listElement
    selectedIndex: actionArg ]