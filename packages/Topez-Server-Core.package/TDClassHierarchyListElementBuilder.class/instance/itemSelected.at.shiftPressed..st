as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | aspect className itemAttribute obj |
  itemAttribute := listElement itemCache at: index.
  className := itemAttribute object.
  aspect := itemAttribute aspect.
  obj := Smalltalk classNamed: className.
  shiftPressed
    ifTrue: [ 
      obj
        edit: nil
        topez: listElement topez
        aspect: #'browse'
        windowName: nil
        windowId: nil ]
    ifFalse: [ 
      obj
        edit: nil
        topez: listElement topez
        aspect: aspect
        windowName: self editorWindowName
        windowId: nil ].
  ^ nil