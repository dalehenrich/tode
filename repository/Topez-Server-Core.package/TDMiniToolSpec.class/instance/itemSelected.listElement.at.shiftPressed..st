interaction
itemSelected: miniToolClientListElementBuilder listElement: listElement at: index shiftPressed: shiftPressed
  builder := miniToolClientListElementBuilder.
  ^ self itemSelectedBlock
    value: self
    value: listElement
    value: index
    value: shiftPressed