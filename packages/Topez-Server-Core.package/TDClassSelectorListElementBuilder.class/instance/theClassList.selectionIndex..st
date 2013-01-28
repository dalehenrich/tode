as yet unclassified
theClassList: listElement selectionIndex: selectionIndex
  "will resolve to classes later (if necessary) for CMD-b"

  | itemAttribute classAttributes className |
  selectionIndex == 0
    ifTrue: [ ^ #() ].
  itemAttribute := listElement itemCache at: selectionIndex.
  classAttributes := itemAttribute object.
  className := classAttributes at: 1.
  ^ {(Smalltalk classNamed: className)}