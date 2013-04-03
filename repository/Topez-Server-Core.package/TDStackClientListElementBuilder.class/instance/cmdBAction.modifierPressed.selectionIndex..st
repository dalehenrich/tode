as yet unclassified
cmdBAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-b - browse class"

  | method |
  selectionIndex == 0
    ifTrue: [ ^ super cmdBAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex ].
  self object navigateFrame: selectionIndex.
  method := self object currentFrame method.
  method inClass ifNil: [ ^ false ].
  {(TDClassDefinition className: method inClass theNonMetaClass name)} edit: listElement topez aspect: #'definitionList'.
  ^ true