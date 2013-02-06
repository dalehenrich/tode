as yet unclassified
cmdShiftBAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-B - browse class hierarchy"

  | method |
  selectionIndex == 0
    ifTrue: [ ^ super cmdShiftBAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex ].
  self object navigateFrame: selectionIndex.
  method := self object currentFrame method.
  method inClass ifNil: [ ^ false ].
  method inClass theNonMetaClass
    edit: listElement parent
    topez: listElement topez
    aspect: #'browse'
    windowName: nil
    windowId: nil
    windowLocation: nil.
  ^ true