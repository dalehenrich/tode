as yet unclassified
theClassList: listElement selectionIndex: selectionIndex
  "will resolve to classes later (if necessary) for CMD-b"

  | itemAttribute node |
  selectionIndex == 0
    ifTrue: [ ^ #() ].
  itemAttribute := listElement itemCache at: selectionIndex.
  node := itemAttribute object.
  ^ {(node dotSelfObject)}