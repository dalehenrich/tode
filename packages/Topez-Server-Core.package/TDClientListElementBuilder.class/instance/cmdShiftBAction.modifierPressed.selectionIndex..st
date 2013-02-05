as yet unclassified
cmdShiftBAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-b - browse class - globals"

  | classList |
  classList := self theClassList: listElement selectionIndex: selectionIndex.
  classList isEmpty
    ifTrue: [ ^ true ].
  classList
    edit: listElement parent
    topez: listElement topez
    aspect: #'classList'
    windowName: nil
    windowId: nil
    windowLocation: nil.
  ^ true