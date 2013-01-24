as yet unclassified
itemSelected: listElement at: index
  | aspect parent |
  aspect := listElement aspect.
  parent := listElement parent
  parent ~~ nil
    ifTrue: [ 
      aspect == 1
        ifTrue: [ 
          "itemCache entry asObjectNode with inspect aspect then just edit"
          "."
          self halt.
          aspect := #'inspect' ].
      index == 2
        ifTrue: [ 
          ".."
          aspect := listElement parent aspect.
          parent := parent parent ] ].
  (listElement itemCache at: index)
    edit: parent
    topez: listElement topez
    aspect: aspect
    windowId: nil.
  ^ nil