as yet unclassified
cmdBAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-b - browse class"

  | aspect obj parentObj itemAttribute |
  selectionIndex == 0
    ifTrue: [ ^ super cmdBAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex ].
  itemAttribute := listElement itemCache at: selectionIndex.
  obj := itemAttribute object.
  {(TDClassDefinition className: obj class theNonMetaClass name)} edit: listElement topez aspect: #'definitionList'.
  ^ true