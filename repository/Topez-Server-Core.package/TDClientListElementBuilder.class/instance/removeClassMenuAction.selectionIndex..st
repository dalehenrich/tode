menu actions
removeClassMenuAction: listElement selectionIndex: selectionIndex
  | cls clsTool |
  cls := self selectedClass: listElement selectionIndex: selectionIndex.
  clsTool := listElement topez toolInstanceFor: 'cls'.
  clsTool clsremove: cls.
  ^ #'refreshView'