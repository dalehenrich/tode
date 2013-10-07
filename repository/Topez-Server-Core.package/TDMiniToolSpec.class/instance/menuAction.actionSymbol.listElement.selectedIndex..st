menus
menuAction: miniToolClientListElementBuilder actionSymbol: actionSymbol listElement: listElement selectedIndex: index
  builder := miniToolClientListElementBuilder.
  ^ self menuActionBlock
    value: self
    value: actionSymbol
    value: listElement
    value: index