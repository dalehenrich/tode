as yet unclassified
selectedClass: listElement selectionIndex: selectionIndex
  | obj itemAttribute |
  selectionIndex == 0
    ifTrue: [ ^ self theClass ].
  itemAttribute := listElement itemCache at: selectionIndex.
  obj := itemAttribute object.
  ^ obj class theNonMetaClass