as yet unclassified
theClassList: listElement selectionIndex: selectionIndex
  "will resolve to classes later (if necessary) for CMD-b"

  selectionIndex == 0
    ifTrue: [ ^ #() ].
  ^ {(self object currentFrame receiver)}