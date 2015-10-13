interaction
itemSelected: listElement at: index shiftPressed: shiftPressed listSelectionsDictionary: listSelectionsDictionary
  index ifNil: [ ^ nil ].
  ^ self theEditorSpec
    itemSelected: self
    listElement: listElement
    at: index
    shiftPressed: shiftPressed
    listSelectionsDictionary: listSelectionsDictionary