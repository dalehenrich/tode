menu actions
doMergeMenuAction: listElement selectionIndex: selectionIndex
  "load merger"

  self merger doMerge
    ifTrue: [ ^ #'close' ]
    ifFalse: [ ^ true ]