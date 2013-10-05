as yet unclassified
selectedDefinition: listElement selectionIndex: selectionIndex
  | itemAttribute |
  selectionIndex == 0
    ifTrue: [ ^ nil ].
  itemAttribute := listElement itemCache at: selectionIndex.
  ^ itemAttribute object