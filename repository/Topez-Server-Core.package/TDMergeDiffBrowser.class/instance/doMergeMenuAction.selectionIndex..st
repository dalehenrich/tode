menu actions
doMergeMenuAction: listElement selectionIndex: selectionIndex
  "load merger"

  self object doMerge
    ifTrue: [ ^ #'close' ]
    ifFalse: [ ^ true ]