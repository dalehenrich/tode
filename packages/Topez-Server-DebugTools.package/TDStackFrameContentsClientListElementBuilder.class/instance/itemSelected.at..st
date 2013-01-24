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
          | parentNode |
          "."
          "inspect subject of list"
          parentNode := self objectNodeFor: listElement.
          parentObj := self object.
          obj := (obj asTDObjectNode: parentNode topez: listElement topez aspect: #'inspect')
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