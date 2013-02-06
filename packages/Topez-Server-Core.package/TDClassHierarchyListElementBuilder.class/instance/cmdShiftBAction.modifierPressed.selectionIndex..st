as yet unclassified
cmdShiftBAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-B - browse class hierarchy"

  | itemAttribute className def |
  selectionIndex == 0
    ifTrue: [ ^ super cmdShiftBAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex ].
  itemAttribute := listElement itemCache at: selectionIndex.
  className := itemAttribute object.
  def := TDClassDefinition className: className.
  def theClass
    edit: listElement parent
    topez: listElement topez
    aspect: #'browse'
    windowName: nil
    windowId: nil
    windowLocation: nil.
  ^ true