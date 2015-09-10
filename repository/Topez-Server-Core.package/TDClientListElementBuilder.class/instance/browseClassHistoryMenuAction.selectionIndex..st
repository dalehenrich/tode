menu actions
browseClassHistoryMenuAction: listElement selectionIndex: selectionIndex
  | cls clsTool |
  clsTool := self clsTool: listElement.
  cls := self selectedClass: listElement selectionIndex: selectionIndex.
  clsTool browseClsHistoryFor: cls.
  ^ true