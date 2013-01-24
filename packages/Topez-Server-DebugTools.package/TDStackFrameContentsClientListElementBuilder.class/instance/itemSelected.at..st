as yet unclassified
itemSelected: listElement at: index
  | aspect parent obj |
  aspect := listElement aspect.
  parent := listElement parentNode.
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
          aspect := listElement parentNode aspect.
          parent := parent parent ] ].
  obj := listElement itemCache at: index.
  obj
    edit: parent
    topez: listElement topez
    aspect: aspect
    windowId: nil.
  ^ nil