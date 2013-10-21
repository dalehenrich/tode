actions
pasteObjectMenuAction: listElement selectionIndex: selectionIndex
  | def result targetDef |
  selectionIndex = 0
    ifTrue: [ ^ targetDef addToSystem: self mcTool ].
  def := self definitionForSelection: (self theList at: selectionIndex).
  targetDef := self objectClipboard.
  result := def pasteTDDefinition: targetDef.
  self topez commitTransaction.
  ^ result