interaction
itemSelected: miniToolClientListElementBuilder listElement: listElement at: index shiftPressed: shiftPressed listSelectionsDictionary: listSelectionsDictionary
  "multiple selection"

  builder := miniToolClientListElementBuilder.
  ^ self itemSelectedBlock
    value: self
    value: listElement
    value: index
    value: shiftPressed
    value: listSelectionsDictionary