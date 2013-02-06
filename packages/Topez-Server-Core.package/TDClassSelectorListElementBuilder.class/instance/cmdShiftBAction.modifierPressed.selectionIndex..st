as yet unclassified
cmdShiftBAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-B - browse class hierarchy"

  self theClass
    edit: listElement parent
    topez: listElement topez
    aspect: #'browse'
    windowName: nil
    windowId: nil
    windowLocation: nil.
  ^ true