as yet unclassified
cmdShiftBAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-B - browse class hierarchy"

  self object class theNonMetaClass
    edit: listElement parent
    topez: listElement topez
    aspect: #'browse'
    windowName: nil
    windowId: nil
    windowLocation: nil.
  ^ true