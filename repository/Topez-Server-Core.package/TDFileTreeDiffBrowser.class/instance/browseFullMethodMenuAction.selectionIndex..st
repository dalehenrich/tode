menu actions
browseFullMethodMenuAction: listElement selectionIndex: selectionIndex
  | operation defs methodSpec |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  operation := self operations at: selectionIndex.
  methodSpec := operation methodSpec.
  defs := (self findTool: listElement) findMethodSpec: methodSpec.
  (listElement topez toolInstanceFor: 'browse')
    browseMethods: defs
    label: methodSpec.
  ^ true