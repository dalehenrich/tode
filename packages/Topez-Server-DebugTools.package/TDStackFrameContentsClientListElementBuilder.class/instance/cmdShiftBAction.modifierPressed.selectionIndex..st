as yet unclassified
cmdShiftBAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-B - browse class hierarchy"

  | aspect obj parentObj itemAttribute |
  selectionIndex == 0
    ifTrue: [ ^ super cmdShiftBAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex ].
  itemAttribute := listElement itemCache at: selectionIndex.
  obj := itemAttribute object.
  obj class theNonMetaClass
    edit: listElement parent
    topez: listElement topez
    aspect: #'browse'
    windowName: nil
    windowId: nil
    windowLocation: nil.
  ^ true