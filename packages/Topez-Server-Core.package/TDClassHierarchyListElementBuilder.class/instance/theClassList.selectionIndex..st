as yet unclassified
theClassList: listElement selectionIndex: selectionIndex
  "will resolve to classes later (if necessary) for CMD-b"

  | itemAttribute aspect className |
  selectionIndex == 0
    ifTrue: [ ^ #() ].
  itemAttribute := listElement itemCache at: selectionIndex.
  className := itemAttribute object.
  aspect := itemAttribute aspect.
  ^ {(Smalltalk classNamed: className)}