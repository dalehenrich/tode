accessing
keyboardActionBlock
  ^ [ :miniTool :listElement :char :modifierPressed :index | 
  self
    keyboardAction: miniTool
    listElement: listElement
    char: char
    modifierPressed: modifierPressed
    selectionIndex: index ]