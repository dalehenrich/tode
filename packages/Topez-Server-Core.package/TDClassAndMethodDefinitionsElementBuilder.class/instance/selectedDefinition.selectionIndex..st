as yet unclassified
selectedDefinition: listElement selectionIndex: selectionIndex
  | itemAttribute def |
  selectionIndex == 0
    ifTrue: [ ^ nil ].
  itemAttribute := listElement itemCache at: selectionIndex.
  ^ itemAttribute object