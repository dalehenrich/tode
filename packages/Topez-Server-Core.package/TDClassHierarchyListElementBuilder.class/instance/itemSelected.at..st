as yet unclassified
itemSelected: listElement at: index
  | aspect className itemAttribute obj |
  itemAttribute := listElement itemCache at: index.
  className := itemAttribute object.
  aspect := itemAttribute aspect.
  obj := Smalltalk classNamed: className.
  obj
    edit: nil
    topez: listElement topez
    aspect: aspect
    windowName: self editorWindowName
    windowId: nil.
  ^ nil