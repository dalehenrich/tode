as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | objectLogEntry |
  objectLogEntry := self object objectLog at: index.
  objectLogEntry
    edit: self object
    topez: listElement topez
    aspect: #'browse'
    selectionIndex: nil
    highlightIndex: nil
    parentListIndex: {index}
    windowName: #'inspector'
    windowId: nil
    windowLocation: nil.
  ^ nil