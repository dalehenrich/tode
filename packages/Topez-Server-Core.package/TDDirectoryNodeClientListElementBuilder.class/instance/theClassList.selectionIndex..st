as yet unclassified
theClassList: listElement selectionIndex: selectionIndex
  "will resolve to classes later (if necessary) for CMD-b"

  ^ selectionIndex = 0
    ifTrue: [ {(listElement theObject dotSelfObject)} ]
    ifFalse: [ 
      | itemAttribute obj |
      itemAttribute := listElement itemCache at: selectionIndex.
      obj := itemAttribute object.
      {(obj dotSelfObject)} ]