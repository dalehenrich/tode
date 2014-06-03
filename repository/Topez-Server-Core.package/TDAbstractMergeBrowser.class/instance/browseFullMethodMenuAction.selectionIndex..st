menu actions
browseFullMethodMenuAction: listElement selectionIndex: selectionIndex
  | operation block methodSpec |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  operation := self operations at: selectionIndex.
  methodSpec := operation methodSpec.
  methodSpec ifNil: [ ^ false ].
  block := [ self findTool findMethodSpec: methodSpec ].
  (listElement topez toolInstanceFor: 'browse')
    browseMethodsBlock: block
    label: methodSpec.
  ^ true