interaction
itemSelected: listElement at: index shiftPressed: shiftPressed
  ^ self theEditorSpec
    itemSelected: self
    listElement: listElement
    at: index
    shiftPressed: shiftPressed