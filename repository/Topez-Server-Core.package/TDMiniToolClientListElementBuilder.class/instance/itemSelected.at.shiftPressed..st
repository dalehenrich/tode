interaction
itemSelected: listElement at: index shiftPressed: shiftPressed
  index ifNil: [ ^ nil ].
  ^ self theEditorSpec
    itemSelected: self
    listElement: listElement
    at: index
    shiftPressed: shiftPressed