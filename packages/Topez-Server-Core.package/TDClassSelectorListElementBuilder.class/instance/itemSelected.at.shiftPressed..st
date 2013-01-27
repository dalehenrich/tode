as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | aspect className itemAttribute classAttributes selector method isMeta cl |
  itemAttribute := listElement itemCache at: index.
  classAttributes := itemAttribute object.
  aspect := itemAttribute aspect.
  className := classAttributes at: 1.
  selector := classAttributes at: 3.
  isMeta := classAttributes at: 2.
  cl := Smalltalk classNamed: className.
  isMeta
    ifTrue: [ cl := cl class ].
  method := cl compiledMethodAt: selector.
  method
    edit: nil
    topez: listElement topez
    aspect: #'method'
    windowName: #'method'
    windowId: nil.
  ^ nil