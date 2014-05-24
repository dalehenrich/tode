menu actions
browseFullClassMenuAction: listElement selectionIndex: selectionIndex
  | cls |
  cls := self selectedClass: listElement selectionIndex: selectionIndex.
  ^ self browseFullClassMenuAction: listElement class: cls