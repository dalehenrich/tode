as yet unclassified
itemSelected: listElement at: index
  | aspect parentNode obj |
  aspect := listElement aspect.
  parentNode := listElement parent.
  obj := listElement itemCache at: index.
  parentNode ~~ nil
    ifTrue: [ 
      index == 1
        ifTrue: [ 
          | parentObjectNode |
          "."
          "inspect subject of list"
          parentObjectNode := self objectNodeFor: listElement.
          obj := (obj asTDObjectNode: parentObjectNode topez: listElement topez aspect: #'inspect')
            name: (self object tzNodeDisplay: 80 displayOops: listElement topez displayOops compacted: true);
            yourself ].
      index == 2
        ifTrue: [ 
          ".."
          "nothing special"
           ] ].
  obj
    edit: parentNode
    topez: listElement topez
    aspect: aspect
    windowId: nil.
  ^ nil