as yet unclassified
cmdShiftEAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-E - browse pkg/config classes/methods"

  | definition defs |
  definition := self object selectedDefinition.
  definition ifNil: [ ^ true ].
  defs := definition classDefinitions.
  defs edit: listElement topez aspect: #'definitionList'.
  ^ true