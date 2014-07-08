menu actions
createAccessorsMenuAction: listElement selectionIndex: selectionIndex
  | cls clsTool |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  cls := self selectedClass: listElement selectionIndex: selectionIndex.
  clsTool := listElement topez toolInstanceFor: 'cls'.
  clsTool clsaccessors: cls.
  ^ true