as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | aspect className itemAttribute obj |
  itemAttribute := listElement itemCache at: index.
  className := itemAttribute object.
  aspect := itemAttribute aspect.
  obj := Smalltalk classNamed: className.
  TDClassDefinition selectClassNamed: className topez: listElement topez.
  obj
    edit: nil
      topez: listElement topez
      aspect: #'classDefinition'
      windowName: #'classDefinition'
      windowId: nil;
    edit: nil
      topez: listElement topez
      aspect: #'instanceSelectors'
      windowName: #'instanceSelectors'
      windowId: nil.
  obj class
    edit: nil
    topez: listElement topez
    aspect: #'classSelectors'
    windowName: '#classSelectors'
    windowId: nil.
  listElement selectedIndex ~~ index
    ifTrue: [ 
      obj
        edit: nil
        topez: listElement topez
        aspect: #'navigate'
        windowName: #'hierarchy'
        windowId: nil ].
  ^ nil