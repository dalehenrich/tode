as yet unclassified
itemSelected: listElement at: index
  | aspect parent obj |
  aspect := listElement aspect.
  parent := listElement parent.
  obj := listElement itemCache at: index.
  parent ~~ nil
    ifTrue: [ 
      aspect == 1
        ifTrue: [ 
          "."
          "inspect subject of list"
          obj := obj asTDObjectNode: listElement parent topez: listElement topez aspect: #'inspect' ].
      index == 2
        ifTrue: [ 
          ".."
          "return to parent ... what's the parents parent"
          parent := parent parent ] ].
  obj
    edit: parent
    topez: listElement topez
    aspect: aspect
    windowId: nil.
  ^ nil