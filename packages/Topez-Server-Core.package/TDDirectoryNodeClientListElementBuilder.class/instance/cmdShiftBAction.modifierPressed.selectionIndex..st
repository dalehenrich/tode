as yet unclassified
cmdShiftBAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-B - browse class hierarchy"

  self object dotSelfObject class theNonMetaClass
    edit: listElement parent
    topez: listElement topez
    aspect: #'browse'
    windowName: #'hierarchy'
    windowId: nil
    windowLocation: nil.
  ^ true