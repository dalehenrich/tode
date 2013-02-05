as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  "open hierarchy window"

  | aspect className itemAttribute obj |
  itemAttribute := listElement itemCache at: index.
  className := itemAttribute object.
  obj := Smalltalk classNamed: className.
  obj
    edit: nil
    topez: listElement topez
    aspect: #'browse'
    windowName: nil
    windowId: nil