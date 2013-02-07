as yet unclassified
selectedDefinition: listElement selectionIndex: selectionIndex
  | itemAttribute className def |
  selectionIndex == 0
    ifTrue: [ ^ nil ].
  itemAttribute := listElement itemCache at: selectionIndex.
  className := itemAttribute object.
  ^ TDClassDefinition className: className