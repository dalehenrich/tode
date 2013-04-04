as yet unclassified
cmdShiftBAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-B - browse class hierarchy"

  | cls |
  cls := self selectedClass: listElement selectionIndex: selectionIndex.
  cls
    edit: listElement parent
    topez: listElement topez
    aspect: #'browse'
    windowName: #'hierarchy'
    windowId: nil
    windowLocation: nil.
  ^ true