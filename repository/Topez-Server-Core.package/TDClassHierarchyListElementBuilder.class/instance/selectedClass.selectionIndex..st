as yet unclassified
selectedClass: listElement selectionIndex: selectionIndex
  | def |
  def := self selectedDefinition: listElement selectionIndex: selectionIndex.
  def ifNil: [ ^ self theClass ].
  ^ def theClass