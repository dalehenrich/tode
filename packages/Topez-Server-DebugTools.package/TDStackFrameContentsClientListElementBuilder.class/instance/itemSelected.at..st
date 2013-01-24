as yet unclassified
itemSelected: listElement at: index
  | aspect assoc obj parentObj |
  aspect := listElement aspect.
  assoc := listElement itemCache at: index.
  obj := assoc key.
  parentObj := assoc value.
  parentObj ~~ nil
    ifTrue: [ 
      index == 1
        ifTrue: [ 
          "."
          "inspect subject of list"
          parentObj := self object.
          obj := (obj asTDObjectNode: parentObj topez: listElement topez aspect: #'inspect')
            name: self objectPrintString;
            yourself ].
      index == 2
        ifTrue: [ 
          ".."
          "nothing special"
           ] ].
  obj
    edit: parentObj
    topez: listElement topez
    aspect: aspect
    windowId: nil.
  ^ nil