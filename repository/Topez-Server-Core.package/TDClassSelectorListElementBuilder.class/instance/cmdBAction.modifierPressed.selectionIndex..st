as yet unclassified
cmdBAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-b - browse class"

  {(TDClassDefinition className: self theClass name)} edit: listElement topez aspect: #'definitionList'.
  ^ true